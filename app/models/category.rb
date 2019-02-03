class Category < ApplicationRecord
  has_many :subcategories

  validates :name, presence: true
  validates :code, uniqueness: true
end
