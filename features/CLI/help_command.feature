Feature: help command

	The KEA provides a built-in help menu for discovering commands and viewing documentaiton.

	Scenario: No arguments, displays help menu
		When I run `kea`
		Then the output should contain:
			"""
			KSP Engineer's Assistant commands:
			"""
		And the output should contain:
			"""
			help [COMMAND]  # Describe available commands or one specific command
			"""
