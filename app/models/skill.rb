class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :wishlists
  has_many :users, through: :wishlists
end
