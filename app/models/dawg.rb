class Dawg < ActiveRecord::Base
	belongs_to :root, :class_name => 'Node'
	
	class << self
		def from_list(words)
			return self.new.from_list(words)
		end
	end #class

	def from_list(words)
		if self.root
			self.root.add(words.pop)
		else
			self.root = Node.add(words.pop)
		end

		while words
			self.from_list words.pop
		end
	
		return self
	end

end
