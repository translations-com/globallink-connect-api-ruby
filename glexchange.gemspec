Gem::Specification.new do |s|
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = "2.4.5"
  s.name        = 'glexchange'
  s.version     = '4.19.0'
  s.date        = '2018-01-05'
  s.email = ["info@translations.com"]
  s.homepage = "http://translations.com"
  s.summary     = "GlobalLink Client Library"
  s.description = "GLC gem integrates you with GlobalLink Project Director to create and manage translation projects"
  s.authors     = ["translations.com"]
  s.require_paths = ["lib"]
  s.files        = Dir["{lib}/**/*.rb"]
  s.add_runtime_dependency 'nokogiri'
  s.add_runtime_dependency 'httpclient'
  s.add_runtime_dependency 'soap4r-ng'


end