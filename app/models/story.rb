class Story < ApplicationRecord
  belongs_to :user
  has_rich_text :body
  has_many :comments

  validates :title, :body, presence: true
end
