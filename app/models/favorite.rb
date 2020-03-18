class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :task
  
  has_many :users
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'favo_id'
  has_many :likers, through: :reverses_of_favorite, source: :user
end
