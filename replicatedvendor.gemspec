Gem::Specification.new do |s|
  s.name        = 'replicatedvendor'
  s.version     = '0.0.1'
  s.licenses    = ['MIT']
  s.summary     = "A ruby wrapper for the replicated vendor api"
  s.description = "A ruby wrapper for the replicated vendor api: https://replicated-vendor-api.readme.io/v1.0/reference"
  s.authors     = ["Guy Moore", "Daryl Metzler"]
  s.email       = 'guy.moore.normal@mgmail.com'
  s.files    = %w(replicatedvendor.gemspec)
  s.files    += Dir.glob("lib/**/*.rb")
  s.files    += Dir.glob("lib/**/**/*.rb")
  s.homepage    = 'https://rubygems.org/gems/replicatedvendor'
end
