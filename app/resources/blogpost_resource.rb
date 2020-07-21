class BlogpostResource < JSONAPI::Resource
  attributes :title, :content, :created_at, :updated_at
end