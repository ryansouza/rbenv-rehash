require 'rubygems' unless Object.const_defined?(:Gem)

Gem::Specification.new do |s|
  s.name = "rbenv-rehash"
  s.version = '0.3'
  s.authors = ["Ryan Souza"]
  s.license = 'MIT'
  s.email = "ryan@ryansouza.net"
  s.summary = "Rubygems plugin to automatically rehash rbenv"
  s.description = "Rubygems plugin to automatically run 'rbenv rehash' after (un)installing gems with executables. For optimal results, install within each installed ruby version."
  s.homepage = "http://github.com/ryansouza/rbenv-rehash"
  s.files = Dir.glob(%w[ {lib,test}/**/*.rb ]) + %w{rbenv-rehash.gemspec README.md COPYING}
end
