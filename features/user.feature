Feature: Manage user

As a Client
I want to create and retrieve users
So that I can manage better my user pool

Scenario: Ability to retrieve a user
	Given I register a user:
		| title | body |
		| Pippo | Mns  |
	When I search for the newly registered user
	Then the user below should be returned:
		| title | body |
		| Pippo | Mns  |

Scenario: Ability to create a user
	Given I register a user:
		| title | body |
		| Pippo | Mns  |
	Then the registration should be successful
