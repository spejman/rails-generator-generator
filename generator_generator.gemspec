Gem::Specification.new do |s|
  s.name = %q{generator_generator}
  s.version = "0.9"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sergio Espeja"]
  s.date = %q{2008-06-04}
  s.description = %q{A rails generator that generates a rails generator skeleton for easy creation of new rails generators. Like plugin generator but with generators.}
  s.email = %q{sergio.espeja@gmail.com}
  s.files = ["README", "USAGE", "generator_generator.rb", "templates/named_generator.rb", "templates/usage", "templates/base_generator.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/spejman/rails-generator-generator}
  s.rdoc_options = ["--main", "README"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{A rails generator that generates a rails generator skeleton for easy creation of new rails generators. Like plugin generator but with generators.}

  s.add_dependency(%q<rails>, [">= 1.2.5"])
end
