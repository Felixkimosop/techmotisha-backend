# class WishlistSerializer < ActiveModel::Serializer
#     attributes :id, :content_id, :user_id, :created_at, :content_details
  
#     def content_details
#       ContentSerializer.new(object.content).as_json if object.content.present?
#     end
#   end
  