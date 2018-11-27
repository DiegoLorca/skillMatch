class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :lists
 has_many :skills, through: :lists, as: :skills
 has_many :wishlists
 has_many :skills, through: :wishlists, as: :wishlists

end
