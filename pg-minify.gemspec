$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'pg-minify/version'

Gem::Specification.new do |s|
  s.name        = 'pg-minify'
  s.version     = PGMinify::VERSION
  s.authors     = ['Mattt']
  s.email       = ['mattt@me.com']
  s.homepage    = 'https://github.com/jamalytics/pg-minify'
  s.summary     = 'Ruby wrapper for pg-minify by @vitaly-t'
  s.description = ''

  s.licenses = ['MIT']
  s.platform = Gem::Platform::RUBY

  s.required_ruby_version = '>= 2.1'
  s.required_rubygems_version = '>= 2.0'
  s.metadata = {
    'source_url' => s.homepage,
    'issue_tracker' => "#{s.homepage}/issues"
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split('\n').map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'schmooze'
end
