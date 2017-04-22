class Micropost < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :favoritings, through: :favorites, source: :content
  has_many :reverses_of_favorite, class_name: "Favorite", foreign_key: "content_id"
  
end
