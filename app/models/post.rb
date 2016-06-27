class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :body, presence: true

  self.per_page = 20
end
