class Game < ApplicationRecord
  include SoftDeletable

  has_many :wishilist_items, dependent: :destroy
  has_many :wishlists, through: :wishilist_items

  validates :name, presence: true
  validates :publisher, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :release_year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1950 }
end
