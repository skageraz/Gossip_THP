class Comment < ApplicationRecord
  belongs_to :gossip
  belongs_to :user
  has_many :comments, as: :commentable #permet de creer des commentaires polymorphiques pour pouvoir commneter des commentaires
  has_many :likes
end
