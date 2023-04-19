class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :content

  has_many :replies, class_name: "Comment", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Comment", optional: true

  validates :body, presence: true
end
