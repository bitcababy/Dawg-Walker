Feature: Create dawg
  In order to value
  As a role
  I want feature

  Scenario: Add a word
    When I add the word "cat"
		Then a node: "c" should exist with letter: "c", eow: false
		And a node: "a" should exist with letter: "a", eow: false
		And a node: "t" should exist with letter: "t", eow: true
		And the node: "a" should be node: "c"'s child
		And the node: "t" should be node: "a"'s child
		
  
  
  