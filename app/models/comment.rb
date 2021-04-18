class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :story

  validates :user_id, :story_id, :body, presence: true
end
