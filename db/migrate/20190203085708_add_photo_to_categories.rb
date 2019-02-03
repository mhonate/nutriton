class AddPhotoToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :Photo, :string
  end
end
