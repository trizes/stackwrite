class Comment < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :author
  has_many   :replies,
             class_name: "Comment",
             foreign_key: "reply_id",
             dependent: :destroy
  belongs_to :reply, optional: true, class_name: "Comment"

  validates :body, presence: true, length: { maximum: 1000 }
end
