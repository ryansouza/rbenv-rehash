require 'rubygems'

module RbenvRehash
	@do_rehash = false

	def self.queue_rehash
		@do_rehash = true
	end

	def self.rehash?
		if @do_rehash
			system("rbenv rehash")
			@do_rehash = false
			return true
		end

		return false
	end
end

Gem.post_install { |inst|
	RbenvRehash.queue_rehash unless inst.spec.executables.empty?
}

Gem.post_uninstall { |uninst|
	RbenvRehash.queue_rehash unless uninst.spec.executables.empty?
}

at_exit { RbenvRehash.rehash? }
