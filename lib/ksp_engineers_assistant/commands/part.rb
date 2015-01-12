require 'thor'

class Part < Thor

	desc "add [OPTIONS]", "Adds a new part to the database."
	option :type, banner: "<part type>",
	           desc: "the type of part to add",
			   aliases: [:t]
	option :name, banner: "<part name>",
	              desc: "the name of the part to add",
				  aliases: [:n]
	option :initial_mass, banner: "<initial mass>",
					      desc: "the initial mass of the part"
	option :final_mass, banner: "<final mass>",
						desc: "the final mass of the part"
	option :fuel_type, banner: "<fuel type>",
	                   desc: "the type of fuel the part uses/contains"
	def add
		$stdout.puts "Adding a new #{options[:type]} with the following properties:"
		$stdout.puts "\tName: #{options[:name]}"
		$stdout.puts "\tInitial Mass: #{options[:initial_mass]}"
		$stdout.puts "\tFinal Mass: #{options[:final_mass]}"

		if (options[:type] == "engine" || options[:type] == "fuel tank")
			$stdout.puts "\tFuel Type: #{options[:fuel_type]}"
		end
	end
end
