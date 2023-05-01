class Category < ApplicationRecord
    has_many :contents, dependent: :destroy
    has_many :subscriptions, dependent: :destroy
  
    validates :name, presence: true
end
