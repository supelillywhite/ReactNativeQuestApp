class GearResource < JSONAPI::Resource
  attributes :name, :description, :price, :quest_id, :created_at, :updated_at
end