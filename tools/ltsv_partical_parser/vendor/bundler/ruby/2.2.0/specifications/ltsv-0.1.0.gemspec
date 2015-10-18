# -*- encoding: utf-8 -*-
# stub: ltsv 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ltsv"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["condor"]
  s.date = "2013-02-12"
  s.description = "A Parser / Dumper for LTSV"
  s.email = ["condor1226@gmail.com"]
  s.homepage = "https://github.com/condor/ltsv"
  s.rubygems_version = "2.4.5.1"
  s.summary = "A Parser / Dumper for LTSV"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
