require 'thor'
require 'ksp_engineers_assistant/commands/part'
require 'mongo'
include Mongo

module KEA
	class App < Thor
		package_name "KSP Engineer's Assistant"
		class_option :mongo_host, default: ENV["KEA_MONGO_HOST"] || "localhost"
		class_option :mongo_port, default: ENV["KEA_MONGO_PORT"] || MongoClient::DEFAULT_PORT
		class_option :mongo_database, default: ENV["KEA_MONGO_DATABASE"].gsub('"', '')|| "kea"

		desc "part SUBCOMMAND", "Provides access to the parts database"
		subcommand "part", Part
	end
end
