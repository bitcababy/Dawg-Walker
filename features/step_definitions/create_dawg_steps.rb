When /^I want to import a lexicon file named "([^"]*)"$/ do |lexname|
  File.exist?(Rails.root.join("lexicons/#{lexname}"))
end

Then /^I should start a new dawg$/ do
	@root = Node.new
end

Then /^I should add each line of "([^"]*)" to the dawg$/ do |lexname|
	file = File.open(Rails.root.join("lexicons/#{lexname}"))
	begin
		string = file.readline
  	pending # express the regexp above with the code you wish you had
	rescue
		file.close
	end
end

When /^I add these "([^"]*)"s to the dawg$/ do |arg1, table|
  # table is a Cucumber::Ast::Table
	table.hashes.each do |hash|
		step "add \"#{hash['word']}\" to @dawg"
	end
end

Then /^the dawg should look like$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given /^a new dawg$/ do
	@root = Node.new
end