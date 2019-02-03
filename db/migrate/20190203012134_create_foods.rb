class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :code
      t.integer :portion
      t.integer :grams
      t.integer :homemade_portion
      t.string :specification
      t.float :value_per_100g
      t.float :gross_weight_g
      t.float :net_weight_g
      t.float :humidity
      t.float :factor_atwater
      t.float :calories
      t.float :proteins_g
      t.float :carbohydrates_g
      t.float :dietary_fiber_g
      t.float :soluble_fiber_g
      t.float :insoluble_fiber_g
      t.float :lipids
      t.float :saturated_fatty_acids_g
      t.float :monounsaturated_fatty_acids_g
      t.float :polyunsaturated_fatty_acids_g
      t.float :cholesterol_mg
      t.float :carotene_re
      t.float :retinol_er
      t.float :vitamin_a_total_re
      t.float :vitamin_b1_mg
      t.float :vitamin_b2_mg
      t.float :niacin_mg
      t.float :vitamin_b4_mg
      t.float :pyridoxine_mg
      t.float :cobalamin_mg
      t.float :folates_mcg
      t.float :pantothenic_acid_mg
      t.float :vitamin_c_mg
      t.float :vitamin_e_mg
      t.float :calcium_mg
      t.float :copper_mg
      t.float :iron_mg
      t.float :magnesium_mg
      t.float :phosphorus_mg
      t.float :potassium_mg
      t.float :selenium_mg
      t.float :sodium_mg
      t.float :zinc_mg
      t.float :orac_index
      t.float :total_polyphenols
      t.float :nitrates
      t.float :nitrites
      t.float :other1
      t.float :other2
      t.float :other3
      t.references :subcategory, foreign_key: true
      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end
