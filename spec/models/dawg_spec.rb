require 'spec_helper'

describe Dawg do
	before :each do
		@words = %W(cat can do dog)
	end

	it "contains the name of the lexicon"
	it "contains the root node of the dawg"
	
	describe "#from_list" do
		it "sets or adds to its root a node hierarchy made from a list of words" do
			dawg = Dawg.new
			dawg.from_list @words.dup
			dawg.root.should be_kind_of Node
		end
	end

	describe "::from_list" do
		it "creates a dawg from a list of words" do
			dawg = Dawg.from_list @words.dup
			dawg.should be_kind_of Dawg
			dawg.root.should be_kind_of Node
		end
	end #::from_list
	
		




end
