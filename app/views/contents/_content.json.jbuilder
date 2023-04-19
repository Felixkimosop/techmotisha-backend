json.extract! content, :id, :title, :description, :type, :url, :thumbnail, :category_id, :user_id, :created_at, :updated_at
json.url content_url(content, format: :json)
