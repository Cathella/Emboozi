class Story < ApplicationRecord
  belongs_to :user
  has_rich_text :body

  validates :title, :body, presence: true
end
