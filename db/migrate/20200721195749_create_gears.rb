class CreateGears < ActiveRecord::Migration[5.0]
  def change
    create_table :gears do |t|
      t.belongs_to :quest
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
