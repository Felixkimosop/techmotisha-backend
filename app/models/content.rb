class Content < ApplicationRecord

  belongs_to :category
  belongs_to :user

  has_many :comments,  dependent: :destroy
  has_many :wishlists,  dependent: :destroy

  validates :title, presence: true
  validates :kind, inclusion: { in: ['video', 'audio', 'article/blog'] }

  has_one_attached :image
  has_one_attached :upload

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end

  def upload_url
    Rails.application.routes.url_helpers.url_for(upload) if upload.attached?
  end


  # self.inheritance_column = :content_type
end
