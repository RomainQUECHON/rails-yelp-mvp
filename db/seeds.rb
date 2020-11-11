require 'faker'
CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

puts "Clearing database"
Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: CATEGORIES.sample
  )
  restaurant.save!
end
puts 'Finished!'
