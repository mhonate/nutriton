class ChangeCodeToBeStringInFoods < ActiveRecord::Migration[5.2]
  def change
    change_column :foods, :code, :string
  end
end
