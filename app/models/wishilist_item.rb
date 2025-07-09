class WishilistItem < ApplicationRecord
  belongs_to :wishlist
  belongs_to :game
end
