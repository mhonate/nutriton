class AddFinishedToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :finished, :boolean
  end
end
