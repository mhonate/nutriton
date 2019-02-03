class Food < ApplicationRecord
  belongs_to :subcategory
  belongs_to :source
  
  validates :name, presence: true
  validates :code, uniqueness: true
end
