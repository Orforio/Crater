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
		When I click the "Create Setlist" button
		Then I see the error "Title can't be blank"
		
	Scenario: Entering invalid information
		Given I am on the "new setlist" page
		When I input invalid setlist data
			And I click the "Create Setlist" button
		Then I see the error "Author is too long"
		
	Scenario: Saving a new setlist
		Given I am on the "new setlist" page
		When I input valid setlist data
			And I click the "Create Setlist" button
		Then a new setlist with a valid edit key is created
