class GeneratorGenerator < Rails::Generator::NamedBase
#attr_accessor :controller_class_name
  def manifest
    record do |m|            
      new_generator_dir = "vendor/generators/#{singular_name}"
      m.directory new_generator_dir
      if args[0] == "base"
        m.template "base_generator.rb", "#{new_generator_dir}/#{singular_name}_generator.rb"
      else
        m.template "named_generator.rb", "#{new_generator_dir}/#{singular_name}_generator.rb"
      end
      m.template "usage", "#{new_generator_dir}/USAGE"
      m.directory "#{new_generator_dir}/templates"
      
      #m.template "controller.rb", File.join("app/controllers", class_path, "#{file_name}_controller.rb")
    end
  end
end
