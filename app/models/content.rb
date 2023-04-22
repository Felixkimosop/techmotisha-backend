class Content < ApplicationRecord
  
  belongs_to :category
  belongs_to :user

  has_many :comments,  dependent: :destroy
  has_many :wishlists,  dependent: :destroy

  validates :title, presence: true
  validates :kind, inclusion: { in: ['video', 'audio', 'article/blog'] }
  

  # self.inheritance_column = :content_type
end
