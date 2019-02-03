class Food < ApplicationRecord
  belongs_to :subcategory
  belongs_to :source
end
