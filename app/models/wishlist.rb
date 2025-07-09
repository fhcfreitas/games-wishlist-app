class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishilist_items, dependent: :destroy
  has_many :games, through: :wishilist_items

  validates :nome, presence: true
  validates :user_id, presence: true
end
