class ChangeCodeToBeStringInCategories < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :code, :string
  end
end
