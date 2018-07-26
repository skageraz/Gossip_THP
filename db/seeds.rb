# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
def ignite
  10.times do
    City.create(
      name: Faker::Address.city
      )

    User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: Faker::ChuckNorris.fact,
      email: Faker::Internet.email,
      age: Faker::Number.between(10, 75),
      city_id: rand(City.first.id..City.last.id)
        )
  end
end

def create_gossips
  20.times do
    Gossip.create(
      title: Faker::Book.title,
      content: Faker::DumbAndDumber.quote,
      date: Faker::Date.backward(14),
      user_id: rand(User.first.id..User.last.id)
   )
  end
end

def create_tags_and_through_table_gossip
  10.times do
    Tag.create(
      title: Faker::Book.title
    )
  end

    Gossip.all.each do |gossip|
  gossip.tags.push(Tag.all.sample)
  gossip.save
end

# give each assembly a random part
  Tag.all.each do |tag|
  tag.gossips.push(Gossip.all.sample)
  tag.save
end
end

   PrivateMessage.create(
     content: Faker::DumbAndDumber.quote,
     date: Faker::Date.backward(14),
     sender_id: rand(User.first.id..User.last.id),
     recipient_id: rand(User.first.id..User.last.id)
   )
