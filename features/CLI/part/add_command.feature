Feature: Add part command

	Users can add new parts to the database by using the part:add command.

	Background:
		Given I set the environment variables to:
		| variable           | value    |
		| KEA_MONGO_DATABASE | kea-test |

	Scenario: Getting help on the `part add` command
		When I run `kea part help add`
		Then the output should contain:
			"""
			add [OPTIONS]
			"""
		And the output should contain:
			"""
			Adds a new part to the database.
			"""

	Scenario: Add a new engine part
		Given a fresh database
		When I run `kea part add --type=engine --name="Test Engine" --initial-mass=100 --final-mass=100 --fuel-type=liquid`
		Then the output should match:
			"""
			Adding a new engine with the following properties:\s*
				Name: Test Engine
				Initial Mass: 100
				Final Mass: 100
				Fuel Type: liquid
			"""
		And a new part should be added to the database with the properties:
			| name        | type   | initial_mass | final_mass | fuel_type |
			| Test Engine | engine | 100          | 100        | liquid    |
