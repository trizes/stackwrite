class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author

  # validates :post_id, presence: true
  validates :body, presence: true, length: { maximum: 1000 }
end
