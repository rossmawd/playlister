class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :playlists
  has_many :likes
  has_many :dislikes
  has_many :listings, through: :playlists
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
