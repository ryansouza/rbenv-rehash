require 'rubygems'
require 'rubygems/installer'
require 'rubygems/specification'
require 'rbenv-rehash'

Gem.post_install { |inst|
	at_exit { RbenvRehash.rehash_at_exit } unless inst.spec.executables.empty?
}

Gem.post_uninstall { |uninst|
	at_exit { RbenvRehash.rehash_at_exit } unless uninst.spec.executables.empty?
}
