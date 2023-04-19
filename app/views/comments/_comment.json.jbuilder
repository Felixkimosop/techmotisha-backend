json.extract! comment, :id, :content_id, :user_id, :comment, :parent_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
