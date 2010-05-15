require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'rubygems'

task :default => :test
         
desc 'Test the flickr plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the flickr plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Flickr'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

spec = Gem::Specification.new do |s|
  s.add_dependency('xml-simple', '>= 1.0.7')
  s.name = 'flickr'
  s.version = "1.0.7"
  s.platform = Gem::Platform::RUBY
  s.summary = "An insanely easy interface to the Flickr photo-sharing service. By Scott Raymond. Maintainer: Patrick Plattes, Rafal Piekarski"
  s.requirements << 'Flickr developers API key'
  s.files = Dir.glob("**/*").delete_if { |item| item.include?("svn") || item[/^pkg/] }
  s.require_path = 'lib'
  s.author = "Scott Raymond, Patrick Plattes, Rafal Piekarski"
  s.email = "ravbaker@gmail.com"
  s.rubyforge_project = "flickr"
  s.homepage = "http://github.com/RaVbaker/flickr/"
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

task "Dump Gemspec file"
task :debug do
  puts spec.to_ruby
end
