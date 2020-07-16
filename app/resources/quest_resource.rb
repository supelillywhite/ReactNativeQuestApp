class QuestResource < JSONAPI::Resource
  attributes :title, :description, :location, :created_at, :updated_at
end