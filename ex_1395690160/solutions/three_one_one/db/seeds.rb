# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Complaint.delete_all

url = "http://data.cityofnewyork.us/resource/erm2-nwe9.json"

response = HTTParty.get(url)

response.each do |complaint|
	Complaint.create(descriptor: complaint['descriptor'], address: complaint['incident_address'], latitude: complaint['latitude'], longitude: complaint['longitude'], zip: complaint['incident_zip'])
end