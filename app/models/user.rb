class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable
  
  has_many :rounds
  has_many :games, through: :rounds
  belongs_to :board
end
