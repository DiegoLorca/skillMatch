class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :lists
 has_many :skills, through: :lists, as: :skills
 has_many :wishlists
 has_many :skills, through: :wishlists, as: :wishlists

 def self.random(user_id)
   User.where('id != ?', user_id).order("random()").limit(1).first
 end

end
