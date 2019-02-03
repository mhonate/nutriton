class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :foods

  validates :name, presence: true
  validates :code, uniqueness: true
end
