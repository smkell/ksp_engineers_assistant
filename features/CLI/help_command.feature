Feature: help command

	The KEA provides a built-in help menu for discovering commands and viewing documentaiton.

	Scenario: No arguments, displays help menu
		When I run `kea`
		Then the output should contain:
			"""
			KSP Engineer's Assistant commands:
			"""
		And the output should match:
			"""
			^.*help\s*\[COMMAND\]\s*# Describe available commands or one specific.*$
			"""

	Scenario: Help command, displays help menu
		When I run `kea help`
		Then the output should contain:
			"""
			KSP Engineer's Assistant commands:
			"""
		And the output should match:
			"""
			^.*help\s*\[COMMAND\]\s*# Describe available commands or one specific.*$
			"""

	Scenario: Getting help on the help command
		When I run `kea help help`
		Then the output should contain:
			"""
			Describe available commands or one specific command
			"""
