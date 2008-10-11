require 'rake'
require 'rake/testtask'
require 'rake/gempackagetask'
require 'rake/contrib/sshpublisher'

desc "Default: run tests"
task :default => :test

Rake::TestTask.new("test") do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

Gem.manage_gems
require "date"

gem_spec = Gem::Specification.new do |s|
	s.name   = "unit_record"
  s.summary = "UnitRecord enables unit testing without hitting the database."
	s.version = "0.9.0"
	s.author = "Dan Manges"
	s.description = "UnitRecord enables unit testing without hitting the database."
	s.email = "daniel.manges@gmail.com"
  s.homepage = "http://unit-test-ar.rubyforge.org"
  s.rubyforge_project = "unit-test-ar"

  s.autorequire = "unit_record"
  s.files = FileList['{lib,test}/**/*.rb', 'CHANGELOG', 'README.markdown', 'Rakefile'].to_a
end

Rake::GemPackageTask.new(gem_spec) do |package|
  package.need_zip = false
  package.need_tar = false
end
Rake::Task["gem"].prerequisites.unshift "test:multi"

namespace :gemspec do
  desc "generates unit_record.gemspec"
  task :generate do
    File.open("unit_record.gemspec", "w") do |f|
      f.puts "# this file is generated by rake gemspec:generate for github"
      f.write gem_spec.to_ruby
    end
  end
end

task :readme do
  require "rubygems"; gem "BlueCloth"; require "BlueCloth"; require 'tmpdir'
  file = "#{Dir.tmpdir}/readme.html"
  File.open(file, "w") { |f| f.write BlueCloth.new(File.read("README.markdown")).to_html }
  sh "open #{file}"
end

RAILS_VERSIONS = %w[1.2.6 2.0.2 2.1.0 2.1.1]

namespace :test do
  desc "test with multiple versions of rails"
  task :multi do
    RAILS_VERSIONS.each do |rails_version|
      sh "RAILS_VERSION='#{rails_version}' rake test > /dev/null 2>&1"
    end
  end      
end

desc "pre-commit task"
task :pc => %w[test:multi gemspec:generate]
