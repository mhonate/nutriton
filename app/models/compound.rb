class Compound < ApplicationRecord
  belongs_to :food
  belongs_to :recipe

  def three_formula value
    ((value * grams) / 100) * portions
  end
end
