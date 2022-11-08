puts "🌱 Seeding spices..."

# Seed your database here
#Create Ward instances
Ward.create(name: "East Ward")
Ward.create(name: "West Ward")
Ward.create(name: "North Ward")
Ward.create(name: "South Ward")

# Create instances of PollingStation
PollingStation.create(name: "Polling station A", ward_id: 1)
PollingStation.create(name: "Polling station B", ward_id: 1)
PollingStation.create(name: "Polling station C", ward_id: 3)
PollingStation.create(name: "Polling station D", ward_id: 5)
PollingStation.create(name: "Polling station E", ward_id: 2)
PollingStation.create(name: "Polling station F", ward_id: 2)
PollingStation.create(name: "Polling station G", ward_id: 2)

puts "✅ Done seeding!"
