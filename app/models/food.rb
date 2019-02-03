class Food < ApplicationRecord
  belongs_to :subcategory
  belongs_to :source
  
  validates :name, presence: true
  validates :code, uniqueness: true

  def self.to_csv
    attributes = %w{name code homemade_portion calories proteins_g carbohydrates_g lipids saturated_fatty_acids_g monounsaturated_fatty_acids_g polyunsaturated_fatty_acids_g }

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |food|
        csv << attributes.map{ |attr| food.send(attr) }
      end
    end
  end


end
