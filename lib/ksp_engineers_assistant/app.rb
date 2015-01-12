require 'thor'
require 'ksp_engineers_assistant/commands/part'

module KEA
	class App < Thor
		package_name "KSP Engineer's Assistant"

		desc "part SUBCOMMAND", "Provides access to the parts database"
		subcommand "part", Part
	end
end
