# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

def ignite #methode qui permet de creer 10 villes et 10 users
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

def create_gossips #on crée 20 gossips
  20.times do
    Gossip.create(
      title: Faker::Book.title,
      content: Faker::DumbAndDumber.quote,
      date: Faker::Date.backward(14),
      user_id: rand(User.first.id..User.last.id)
   )
  end
end

def create_tags_and_through_table_gossip #création de 10 tags et des id de la table intermediaire pour la relation Tag/Gossip
  10.times do
    Tag.create(
      title: Faker::Book.title
    )
  end

  Gossip.all.each do |gossip| #on attribue à chaque gossip un tag aleatoire
  gossip.tags.push(Tag.all.sample)
  gossip.save
   end


  Tag.all.each do |tag|  #on attribue à chaque tag un gossip aléatoire
  tag.gossips.push(Gossip.all.sample)
  tag.save
  end
end

def create_PrivateMessage #creation d'un message entre deux users
   PrivateMessage.create(
     content: Faker::DumbAndDumber.quote,
     date: Faker::Date.backward(14),
     sender_id: rand(User.first.id..User.last.id),
     recipient_id: rand(User.first.id..User.last.id)
   )

 end

 def create_comments_and_undercomments #methode pour créer des comments et sous comments
    10.times do
      comment = Gossip.all.sample.comments.create(
        content: Faker::Lorem.sentences(1),
        gossip_id: rand(Gossip.first.id..Gossip.last.id),
        user_id: rand(User.first.id..User.last.id)
      )
        end
      # Creation de sous-commentaires générés aléatoirement
      10.times do
        comment2 = Comment.all.sample.comments.create(
          content: Faker::Lorem.sentences(1),
          gossip_id: rand(Gossip.first.id..Gossip.last.id),
          user_id: rand(User.first.id..User.last.id)
        )
         end
    end

    def create_likes #genere des likes de manière aléatoire entre les gossips et les comments
    20.times do
      x = 0
      x = rand (1..2)
      if x == 1
        like = Like.create(user_id: rand(User.first.id..User.last.id), gossip_id: rand(Gossip.first.id..Gossip.last.id))
      elsif x == 2
        like = Like.create(user_id: rand(User.first.id..User.last.id), comment_id: rand(Comment.first.id..Comment.last.id))
      end
    end
  end

ignite
create_gossips
create_tags_and_through_table_gossip
create_PrivateMessage
create_comments_and_undercomments
create_likes
