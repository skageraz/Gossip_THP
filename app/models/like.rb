class Like < ApplicationRecord
  belongs_to :user
  belongs_to :comment, optional:true #optional permet aux likes d'exister soit sur un comment soit sur un gossip mais pas sur les deux forcément à la fois
  belongs_to :gossip, optional:true
end
