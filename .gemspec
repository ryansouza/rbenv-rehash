require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/rbenv-rehash"

Gem::Specification.new do |s|
	s.name = "rbenv-rehash"
	s.version = RbenvRehash::VERSION
	s.authors = ["Ryan Souza"]
	s.email = "ryan@ryansouza.net"
	s.summary = "Rubygems plugin to automatically rehash rbenv"
	s.description = "Rubygems plugin to automatically run 'rbenv rehash' after (un)installing gems with executables"
	s.homepage = "http://github.com/scoz/rbenv-rehash"
	s.files = Dir.glob(%w[ {lib,test}/**/*.rb ]) + %w{Rakefile .gemspec}
end
