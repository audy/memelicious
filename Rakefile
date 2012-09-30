# encoding: utf-8

require 'rubygems'
require 'bundler'

require './lib/memetron/version.rb'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "dna"
  gem.homepage = "http://audy.github.com/memetron"
  gem.license = "public domain"
  gem.summary = "Identify and parse memes using Ruby"
  gem.description = "A Ruby library and DSL for defining and parsing internet \"memes\""
  gem.email = "harekrishna@gmail.com"
  gem.authors = ["Austin G. Davis-Richardson"]
  gem.version = Memetron::Version::STRING
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|

  version = Memetron::Version::STRING

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "test #{version}"
  rdoc.rdoc_files.include('readme.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
