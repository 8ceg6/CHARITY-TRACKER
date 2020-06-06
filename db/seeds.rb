# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
    Donor.create(
        name: Faker::Name.name,
        email: Faker::Internet.safe_email
    )
end

10.times do 
    Charity.create(
        name: Faker::Nation.nationality, 
        email: Faker::Internet.safe_email
    )
end