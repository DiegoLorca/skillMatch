class Skill < ApplicationRecord
  has_many :lists
  has_many :users, through: :lists
  has_many :wishlists
  has_many :users, through: :wishlists

  # validate :name, presence: true
  # validate :description, presence: true
  # validate :price, presence: true
end
