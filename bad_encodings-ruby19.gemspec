# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bad_encodings-ruby19}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Salter"]
  s.date = %q{2009-09-10}
  s.default_executable = %q{find_bad_encodings}
  s.description = %q{Small gem that tries to make the task of finding bad ruby encodings in your project a little easier.}
  s.email = %q{adam@codebright.net}
  s.executables = ["find_bad_encodings"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "bin/find_bad_encodings",
     "lib/bad_encodings.rb",
     "lib/bad_encodings/tasks/find_bad_encodings.rake",
     "tasks/gemspec.rake",
     "test/bad_encodings/bad1.rb",
     "test/bad_encodings_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/adamsalter/bad_encodings-ruby19}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Small gem that tries to make the task of finding bad ruby encodings in your project a little easier.}
  s.test_files = [
    "test/bad_encodings/bad1.rb",
     "test/bad_encodings_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<optiflag>, ["~> 0.6.5"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<optiflag>, ["~> 0.6.5"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<optiflag>, ["~> 0.6.5"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end