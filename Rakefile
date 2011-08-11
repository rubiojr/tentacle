require 'rubygems'
require 'rake'
require 'lib/tentacle'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.version = Tentacle::VERSION
  gem.name = "tentacle"
  gem.homepage = "http://github.com/rubiojr/tentacle"
  gem.license = "MIT"
  gem.summary = %Q{Digs YUM repositories to search for RPM packages}
  gem.description = %Q{Digs yum repositories to search for RPM packages}
  gem.email = "rubiojr@frameos.org"
  gem.authors = ["Sergio Rubio"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'clamp'
  gem.add_runtime_dependency 'git'
  gem.add_runtime_dependency 'colorize'
  gem.add_runtime_dependency 'rest-client'
  gem.add_runtime_dependency 'pkg-wizard', '>= 0.1.28'
  gem.add_runtime_dependency 'yumrepo', '>= 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :build

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tentacle #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
