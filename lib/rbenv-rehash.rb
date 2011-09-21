
module RbenvRehash
	VERSION = '0.1'

	def self.rehash_at_exit
		unless @rbenv_rehashed
			system("rbenv rehash")
			@rbenv_rehashed = true
		end
	end
end
