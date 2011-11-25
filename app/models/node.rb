class Node < ActiveRecord::Base
	has_one 		:dawg
	belongs_to 	:child, :class_name => 'Node'
	has_one 		:parent, :class_name => 'Node'
	belongs_to 	:neighbor, :class_name => 'Node'
	has_one 		:back_neighbor, :class_name => 'Node'
	
	def node_from_letter(letter)
		node = self
		while node do
			return node if node.letter == letter
			if node.letter.nil?
				node.letter = letter
				return node
			end
			node = node.neighbor
		end
		if node.nil?
			n = Node.new(:letter => letter)
			n.neighbor = self.neighbor
			self.neighbor = n
		end
	end
	
	def add(word)
		if word.empty? then
			self.end_of_word = true
			return
		end
		root = node_from_letter(word[0])
		if word.length == 1 then
			self.end_of_word = true
		else
			root.child ||= Node.new
			root.child.add(word.slice(1..100))
		end
	end
	
end
