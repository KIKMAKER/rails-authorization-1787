# db/seeds.rb

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all
User.destroy_all

# 2. Create the instances 🏗️

puts "Creating users..."
john = User.create!(
  email: "john@example.com",
  password: "john123"
)
puts "Created user: #{john.email}"

jane = User.create!(
  email: "jane@example.com",
  password: "jane123"
)
puts "Created user: #{jane.email}"

bob = User.create!(
  email: "bob@example.com",
  password: "bob123"
)
puts "Created user: #{bob.email}"

puts "Creating restaurants..."
dishoom = Restaurant.create!(
  name:    "Dishoom",
  address: "7 Boundary St, London E2 7JE",
  rating:  5,
  user:    john
)
puts "Created Dishoom (belongs to #{dishoom.user.email})"

pizza_east = Restaurant.create!(
  name:    "Pizza East",
  address: "56A Shoreditch High St, London E1 6PQ",
  rating:  4,
  user:    john
)
puts "Created Pizza East (belongs to #{pizza_east.user.email})"

taco_land = Restaurant.create!(
  name:    "Taco Land",
  address: "123 Taco Street, Austin, TX",
  rating:  4,
  user:    jane
)
puts "Created Taco Land (belongs to #{taco_land.user.email})"

sushi_samba = Restaurant.create!(
  name:    "Sushi Samba",
  address: "Heron Tower, London",
  rating:  5,
  user:    bob
)
puts "Created Sushi Samba (belongs to #{sushi_samba.user.email})"

# 3. Display a message 🎉
puts "Finished! Created #{User.count} users and #{Restaurant.count} restaurants."
