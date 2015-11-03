Feature: Setlist creation
	As an anonymous user,
	I want to create a setlist,
	So that I may then add tracks.
	
	Scenario: Accessing new setlist page
		Given I am on the "root" page
		When I press the "New setlist" link in the menu
		Then I am taken to the "new setlist" page
			And I see the text "New setlist"
		
	Scenario: Not entering required information
		Given I am on the "new setlist" page
		When I click on the "Save setlist" button
		Then I see the error "is required"
		
	Scenario: Entering invalid information
		pending
		
	Scenario: Saving a new setlist
		pending