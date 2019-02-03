class Category < ApplicationRecord
  has_many :subcategories

  mount_uploader :Photo, ImageUploader


  validates :name, presence: true
  validates :code, uniqueness: true

end
