require 'faker'

puts "🌱 Seeding spices..."

# Create instances of Wards
Ward.create(name: "East Ward")
Ward.create(name: "West Ward")
Ward.create(name: "North Ward")
Ward.create(name: "South Ward")

# Create instances of Polling Stations
PollingStation.create(name: "Polling Station A", ward_id: 1)
PollingStation.create(name: "Polling Station B", ward_id: 1)
PollingStation.create(name: "Polling Station C", ward_id: 2)
PollingStation.create(name: "Polling Station D", ward_id: 3)
PollingStation.create(name: "Polling Station E", ward_id: 3)
PollingStation.create(name: "Polling Station F", ward_id: 3)
PollingStation.create(name: "Polling Station G", ward_id: 4)
PollingStation.create(name: "Polling Station H", ward_id: 4)

# Create instances of Voters
PollingStation.all.each do |station|
  5.times do
    Voter.create(
        first_name: Faker::Name.first_name,
        middle_name: Faker::Name.middle_name,
        last_name: Faker::Name.last_name,
        age: Faker::Number.number(digits: 2),
        gender: Faker::Gender.binary_type,
        DOB: Faker::Date.between(from: '1920-01-01', to: '2004-12-31'),
        id_number: Faker::Number.number(digits: 8),
        polling_station_id: station.id
    )
  end
end

puts "✅ Done seeding!"