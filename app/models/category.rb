class Category < ApplicationRecord
  has_many :subcategories
  mount_uploader :Photo, ImageUploader
end
