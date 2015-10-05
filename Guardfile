require 'erb'
require 'asciidoctor'
require 'asciidoctor/cli'
require 'asciidoctor-diagram'
require 'tilt/asciidoc'


invoker = Asciidoctor::Cli::Invoker.new(%W(-v -otarget/generated-docs/book.html manuscript/book.adoc ))


invoker.invoke!

  guard :shell do
     watch (/^.+\.adoc$/) { |m| invoker.invoke! }
  end

  guard 'livereload' do
    watch(%r{.+\.(css|js|html?|php|inc|theme|puml)$})
  end