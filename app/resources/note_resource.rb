class NoteResource < JSONAPI::Resource
  attributes :text, :created_at, :updated_at, :double_notes, :id
end