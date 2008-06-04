require "active_support"
require 'rake/gempackagetask'

namespace :dev do
  desc "rebuild and reinstall gem"
  task :gem => ["gem:clobber_package", "gem:uninstall_local", "gem:install_local"]
  
end

namespace :gem do

  PACKAGE_NAME = "generator_generator"
  GEM_VERSION = "0.9"
  SUMMARY = "A rails generator that generates a rails generator skeleton for easy creation of new rails generators. Like plugin generator but with generators."
  DESCRIPTION = SUMMARY


  spec = Gem::Specification.new do |s|
    s.name = PACKAGE_NAME
    s.version = GEM_VERSION
    s.date = Date.today
    s.summary = SUMMARY
    s.email = "sergio.espeja@gmail.com"
    s.homepage = "http://github.com/spejman/rails-generator-generator"
    s.description = DESCRIPTION
    s.has_rdoc = true
    s.authors = ["Sergio Espeja"]
    s.files = Dir["README", "USAGE", "generator_generator.rb", "templates/*"]
    s.test_files = Dir["/test/**/*"]
    s.rdoc_options = ["--main", "README"]    
    s.add_dependency("rails", [">= 1.2.5"])
  end    



  Rake::GemPackageTask.new(spec) do |p|
    p.gem_spec = spec
    p.need_tar = true
    p.need_zip = true
  end

  task :install_local => ["gem"] do
    sh "sudo gem install pkg/#{PACKAGE_NAME}-#{GEM_VERSION}.gem"
  end

  task :uninstall_local do
    sh "sudo gem uninstall #{PACKAGE_NAME} -x"        
  end

  
  desc "Create gem spec file"
  task :spec do
    f = File.open("#{PACKAGE_NAME}.gemspec", "w+")
    f << spec.to_ruby
    f.close
  end
  
end