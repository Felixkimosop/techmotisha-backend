json.extract! subscription, :id, :category_id, :user_id, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
