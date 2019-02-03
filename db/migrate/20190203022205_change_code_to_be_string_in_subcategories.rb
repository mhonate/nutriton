class ChangeCodeToBeStringInSubcategories < ActiveRecord::Migration[5.2]
  def change
    change_column :subcategories, :code, :string
  end
end
