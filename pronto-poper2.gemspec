# -*- encoding: utf-8 -*-

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'pronto/poper2/version'
require 'English'

Gem::Specification.new do |s|
  s.name = 'pronto-poper2'
  s.version = Pronto::Poper2Version::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = 'Diego Bentes'
  s.email = 'diegopbentes@gmail.com'
  s.homepage = 'http://github.com/diegobentes/pronto-poper2'
  s.summary = 'Pronto runner for Poper2, git commit message analyzer'

  s.licenses = ['MIT']
  s.required_ruby_version = '>= 2.3.0'
  s.rubygems_version = '1.8.23'

  s.files = `git ls-files`.split($RS).reject do |file|
    file =~ %r{^(?:
    spec/.*
    |Gemfile
    |Rakefile
    |\.rspec
    |\.gitignore
    |\.rubocop.yml
    |\.travis.yml
    )$}x
  end
  s.test_files = []
  s.extra_rdoc_files = ['LICENSE', 'README.md']
  s.require_paths = ['lib']

  s.add_dependency('pronto', '~> 0.11.0')
  s.add_dependency('poper2', '~> 0.3.3')
  s.add_development_dependency('rake', '~> 12.0')
  s.add_development_dependency('rspec', '~> 3.4')
  s.add_development_dependency('rspec-its', '~> 1.2')
end
