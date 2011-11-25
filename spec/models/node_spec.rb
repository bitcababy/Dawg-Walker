require 'spec_helper'

describe Node do
	# before :each do
	# 	@words = %W(cat can do dog)
	# end
	
	describe "#node_from_letter" do
		it "returns itself if letter is empty" do
			node = Node.new
			res = node.node_from_letter("c")
			res.should == node
		end

		it "returns itself if it contains the letter" do
			node = Node.new(:letter => 'a')
			node.node_from_letter('a').should == node
		end
			
		it "find the first node in the neighbor list that matches the letter" do
			node = Node.new(:letter => 'a')
			node2 = node.neighbor = Node.new(:letter => 'b')
			node.node_from_letter('b').should == node2
		end

		it "adds a neighbor if the letter isn't found" do
			node = Node.new(:letter => 'a')
			node.neighbor = Node.new(:letter => 'b')
			res = node.node_from_letter('c')
			cur = node
			while cur && cur.letter != 'c' do
				cur = cur.neighbor
			end
			cur.should_not be_nil
		end
			
	end			
			
	describe "#add" do
		context "empty dawg" do
			it "adds nodes as necessary to represent the word" do
				root = Node.new
				root.add("cat")
				node = root
				"cat".chars do |c|
					node.should_not be_nil
					node.letter.should == c
					node = node.child
				end
			end
		end

	end
	
end
