class AddEnglishNameToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :english_name, :string
  end
end
