Feature: Setlist viewing
	As an anonymous user,
	I want to view a setlist I have a view code for,
	So that I can check its details.
	
	Scenario: Accessing an invalid setlist
		When I visit the "invalid view setlist" page
		Then I see the error "Invalid Setlist"
		
	Scenario: Accessing a valid setlist
		Given a valid setlist with known view key exists
		When I visit the "view setlist" page
		Then I see the text "Title: Mixed Compilation With Known View Key"
