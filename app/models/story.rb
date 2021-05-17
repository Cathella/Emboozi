class Story < ApplicationRecord
  has_rich_text :body
  validates :title, :body, presence: true
  
  has_many :comments
  belongs_to :user
  has_many :users, through: :comments
end
