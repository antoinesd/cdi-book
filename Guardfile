guard 'rake', :task => :html5 do
  watch %r{asciidoc/.+\.\w+$}
end

guard 'livereload' do
  watch %r{target/.+\.(html|png|gif)}
end

guard 'process', :name => 'webrick', :command => 'ruby -run -e httpd output/ -p 3000' do
end
