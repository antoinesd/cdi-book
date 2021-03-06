class ManningPostprocessor < Asciidoctor::Extensions::Postprocessor
  require 'nokogiri'

  BOOK_XMLNS = 'http://www.manning.com/schemas/book'
  ELEMENTS_MAP = {
    :simpara => :para,
    :literal => :code,
    :phrase => :para,
    :textobject => :caption,
  }
  
  def process doc, output
    return output if output.start_with? '<!DOCTYPE html>'

    if output.start_with? '<simpara'
      output = "<preface><title/>#{output}</preface>"
    end
    output.gsub! /<!DOCTYPE.*>/, ''
    
    document = Nokogiri::XML output, &:noblanks
    document.remove_namespaces!

    root = document.root
    return output unless root

    root.name = 'chapter' if root.name == 'preface' or root.name == 'appendix'
    root.default_namespace = BOOK_XMLNS

    ELEMENTS_MAP.each {|path, new_name| rename path, new_name, document }

    remove 'bookinfo/date', document
    remove 'bookinfo/authorinitials', document
    remove 'mediaobject/caption', document
    remove 'inlinemediaobject/caption', document
    remove_attributes 'orderedlist', document, 'numeration'
    remove_attributes 'screen', document,'linenumbering'
    remove_attributes 'programlisting', document,'linenumbering'
    remove_attributes 'table', document,'frame', 'rowsep', 'colsep'
    remove_attributes 'entry', document,'align', 'valign'

    root['label'] = '' if root.name == 'chapter'
    label_nodes = nodes('preface',document) + nodes('chapter',document) + nodes('appendix',document)
    label_nodes.each_with_index do |node,index|
      node['label'] = index+1
    end

    nodes('part',document).each do |part|
      partintro = part.search("./partintro").first
      unless partintro
        partintro = document.create_element 'partintro'
        part.children.first.next = partintro
      end
      intro = part.search("./para") + part.search("./itemizedlist")
      intro.each do |para|
        para.parent = partintro
      end
    end

    nodes('programlisting//@language',document).each do |language|
      language.name = 'format'
    end

    formal_screens = nodes('formalpara/para/screen',document) +
                     nodes('formalpara/para/programlisting',document)
    formal_screens.each do |screen|
      para = screen.parent
      formalpara = para.parent
      screen.name = 'programlisting'
      screen.parent = formalpara
      formalpara.name = 'example'
      para.remove
    end
    
    authors=nodes('author',document)
    authors.each do |n|
      grandpa = n.parent.parent
      n.parent = grandpa
    end
    
    remove 'bookinfo/authorgroup', document
    
    
    screens = nodes('screen',document) + nodes('programlisting',document)
    screens.each do |screen|
      next if screen.parent.name == 'example'
      informalexample = document.create_element 'informalexample'
      informalexample['annotations'] = 'below'
      screen.previous = informalexample
      screen.name = 'programlisting'
      screen.parent = informalexample
    end
    
    nodes('example',document).each do |example|
      example['annotations'] = 'below'
    end
    
    nodes('appendix',document).each do |appendix|
      part = appendix.parent
      next unless part.name == 'part'
      appendix.parent = part.parent
    end

    nodes('calloutlist',document).each do |calloutlist|
      example = calloutlist.previous
      next unless example.name.end_with? 'example'
      calloutlist.parent = example
    end

    nodes('thead/row/entry',document).each do |entry|
      new_entry = document.create_element 'entry'
      entry.previous = new_entry
      entry.name = 'para'
      entry.parent = new_entry
    end

    nodes('attribution',document).each do |attribution|
      citetitle = attribution.element_children.first

      attribution_sections = []
      attribution.children.each do |child|
        child_text = child.text.strip
        next if child_text.empty?
        attribution_sections << child.text.strip
      end

      attribution.content = attribution_sections.join ', '
    end

    nodes('blockquote',document).each do |blockquote|
      next if blockquote.parent.name == 'para'
      para = document.create_element 'para'
      blockquote.previous = para
      blockquote.parent = para
    end

    nodes('xref',document).each do |xref|
      id = xref.attributes['linkend']
      target = document.search("*[@id='#{id}']").first
      target_type = target.name if target

      target_type = case target_type
      when 'example' then 'Listing'
      when nil then 'Section'
      else target_type.capitalize
      end

      xref.previous = "#{target_type} "
    end

    nodes('colspec',document).each {|colspec| colspec.remove }

    output = document.to_xml(:encoding => 'UTF-8', :indent => 2)
    output.gsub! ' standalone="no"', ''
    output
  end

  private

  def nodes path, document
    document.search "//#{path}"
  end

  def rename path, new_name, document
    nodes(path,document).each {|node| node.name = new_name.to_s }
  end

  def remove path,document
    nodes(path,document).each &:remove
  end

  def remove_attributes path, document, *attributes
    nodes(path,document).each do |node|
      attributes.each do |attribute|
        node.remove_attribute attribute
      end
    end
  end

=begin
  def setup_long_annotations node,node2
    node2.remove_attribute 'role'
    return unless node2['role'].to_s.split.include? 'long-annotations'
    node['annotations'] = 'below'
  end
=end
end
