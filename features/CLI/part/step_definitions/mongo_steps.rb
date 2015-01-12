require 'mongo'
include Mongo

Given /^a fresh database$/ do

	client = MongoClient.new
	db     = client[ENV["KEA_MONGO_DATABASE"].gsub('"', '')]
	coll   = db['parts']

	# Clean up the collection
	coll.remove

	expect(coll.count).to eq(0)
end

Then /^a new part should be added to the database with the properties:$/ do |table|
	client = MongoClient.new
	db     = client[ENV["KEA_MONGO_DATABASE"].gsub('"', '')]
	coll   = db['parts']

	table.hashes.each do |part_row|
		name = part_row[:name]
		type = part_row[:type]
		initial_mass = part_row[:initial_mass]
		final_mass = part_row[:final_mass]
		fuel_type = part_row[:fuel_type]

		part = coll.find_one({'_id' => name})
		expect(part).not_to be_nil
		expect(part['_id']).to eq(name)
		expect(part['name']).to eq(name)
		expect(part['type']).to eq(type)
		expect(part['initial_mass']).to eq(initial_mass)
		expect(part['final_mass']).to eq(final_mass)
		expect(part['fuel_type']).to eq(fuel_type)
	end
end
