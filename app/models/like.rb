class Like < ApplicationRecord
  belongs_to :content
  belongs_to :user

  validates :user_id, uniqueness: { scope: :content_id }
end
