class User < ApplicationRecord
    has_secure_password
    has_many :contents, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :subscriptions, dependent: :destroy
    has_many :wishlists, dependent: :destroy
    has_many :categories, through: :subscriptions

    validates :isactive, inclusion: { in: [true, false], message: "User is not active." }

end
