Feature: Import lexicon file
  In order to create a dawg
  As a developer
  I want to add all the words in a lexicon to a new dawg


	Scenario: Add the lexicon
	  When I want to import a lexicon file named "2of12.txt"
		Then I should start a new dawg
	  And I should add each line of "2of12.txt" to the dawg
	
	
		