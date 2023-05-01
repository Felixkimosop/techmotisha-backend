class ContentSerializer
  include JSONAPI::Serializer
  attributes :id, :image_url, :title, :description, :upload_url, :kind
end
