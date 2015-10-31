Feature: Welcome page
	As a user,
	I want to be welcomed onto the site,
	So that I can start using it.

	Scenario: Accessing welcome page
		When I visit the "root" page
		Then I see the text "Welcome to Crater"
