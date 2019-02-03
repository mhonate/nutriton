class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :color
      t.boolean :editable

      t.timestamps
    end
  end
end
