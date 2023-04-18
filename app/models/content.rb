class Content < ApplicationRecord
  belongs_to :category
  belongs_to :user

  self.inheritance_column = :content_type
end
