class User < ApplicationRecord
    has_secure_password
    has_many :contents
    has_many :comments
    has_many :subscriptions
    has_many :wishlists
    has_many :categories, through: :subscriptions
end
