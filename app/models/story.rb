class Story < ApplicationRecord
  has_rich_text :body
  
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, :body, presence: true
end
