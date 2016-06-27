class Post < ApplicationRecord
  belongs_to :author
  default_scope -> { order(created_at: :desc) }
  has_many :comments, dependent: :destroy

  validates :author_id, presence: true
  validates :body, presence: true

  self.per_page = 20
end
