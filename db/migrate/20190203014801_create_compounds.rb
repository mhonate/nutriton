class CreateCompounds < ActiveRecord::Migration[5.2]
  def change
    create_table :compounds do |t|
      t.references :food, foreign_key: true
      t.references :recipe, foreign_key: true
      t.float :grams

      t.timestamps
    end
  end
end
