class AddDoubleNoteToNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :double_notes, :string
  end
end
