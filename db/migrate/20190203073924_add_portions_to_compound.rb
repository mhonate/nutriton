class AddPortionsToCompound < ActiveRecord::Migration[5.2]
  def change
    add_column :compounds, :portions, :integer, default: 1
  end
end
