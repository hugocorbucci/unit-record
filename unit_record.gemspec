# this file is generated by rake gemspec:generate for github
Gem::Specification.new do |s|
  s.name = %q{unit_record}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Manges"]
  s.autorequire = %q{unit_record}
  s.date = %q{2008-10-10}
  s.description = %q{UnitRecord enables unit testing without hitting the database.}
  s.email = %q{daniel.manges@gmail.com}
  s.files = ["lib/active_record/connection_adapters/unit_record_adapter.rb", "lib/unit_record/association_stubbing.rb", "lib/unit_record/column_extension.rb", "lib/unit_record/disconnected_active_record.rb", "lib/unit_record/disconnected_fixtures.rb", "lib/unit_record/disconnected_test_case.rb", "lib/unit_record.rb", "test/active_record/connection_adapters/unit_record_adapter_test.rb", "test/db/schema.rb", "test/test_helper.rb", "test/unit_record/association_stubbing_test.rb", "test/unit_record/column_cacher_test.rb", "test/unit_record/column_extension_test.rb", "test/unit_record/column_test.rb", "test/unit_record/controller_test.rb", "test/unit_record/disconnected_active_record_test.rb", "test/unit_record/disconnected_fixtures_test.rb", "test/unit_record/disconnected_test_case_test.rb", "CHANGELOG", "README.markdown", "Rakefile"]
  s.homepage = %q{http://unit-test-ar.rubyforge.org}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{unit-test-ar}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{UnitRecord enables unit testing without hitting the database.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
