class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :content, class_name: "Micropost"
  
  validates :user_id, presence: true
  validates :user_id, presence: true
end
