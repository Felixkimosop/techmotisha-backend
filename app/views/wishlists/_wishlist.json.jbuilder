json.extract! wishlist, :id, :content_id, :user_id, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
