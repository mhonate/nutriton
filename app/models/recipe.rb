class Recipe < ApplicationRecord
  belongs_to :user
  has_many :compounds
end
