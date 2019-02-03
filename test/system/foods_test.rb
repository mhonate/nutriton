require "application_system_test_case"

class FoodsTest < ApplicationSystemTestCase
  setup do
    @food = foods(:one)
  end

  test "visiting the index" do
    visit foods_url
    assert_selector "h1", text: "Foods"
  end

  test "creating a Food" do
    visit foods_url
    click_on "New Food"

    fill_in "Calcium", with: @food.calcium
    fill_in "Calories", with: @food.calories
    fill_in "Carbohydrates", with: @food.carbohydrates
    fill_in "Carotene", with: @food.carotene
    fill_in "Cholesterol", with: @food.cholesterol
    fill_in "Cobalamin", with: @food.cobalamin
    fill_in "Code", with: @food.code
    fill_in "Copper", with: @food.copper
    fill_in "Dietary fiber", with: @food.dietary_fiber
    fill_in "Factor atwater", with: @food.factor_atwater
    fill_in "Folates", with: @food.folates
    fill_in "Grams", with: @food.grams
    fill_in "Gross weight", with: @food.gross_weight
    fill_in "Homemade portion", with: @food.homemade_portion
    fill_in "Humidity", with: @food.humidity
    fill_in "Insoluble fiber", with: @food.insoluble_fiber
    fill_in "Iron mg", with: @food.iron_mg
    fill_in "Lipids", with: @food.lipids
    fill_in "Magnesium mg", with: @food.magnesium_mg
    fill_in "Monounsaturated fatty acids", with: @food.monounsaturated_fatty_acids
    fill_in "Name", with: @food.name
    fill_in "Net weight", with: @food.net_weight
    fill_in "Niacin", with: @food.niacin
    fill_in "Nitrates", with: @food.nitrates
    fill_in "Nitrites", with: @food.nitrites
    fill_in "Orac index", with: @food.orac_index
    fill_in "Other1", with: @food.other1
    fill_in "Other2", with: @food.other2
    fill_in "Other3", with: @food.other3
    fill_in "Pantothenic acid mg", with: @food.pantothenic_acid_mg
    fill_in "Phosphorus mg", with: @food.phosphorus_mg
    fill_in "Polyunsaturated fatty acids", with: @food.polyunsaturated_fatty_acids
    fill_in "Portion", with: @food.portion
    fill_in "Potassium mg", with: @food.potassium_mg
    fill_in "Proteins", with: @food.proteins
    fill_in "Pyridoxine", with: @food.pyridoxine
    fill_in "Retinol", with: @food.retinol
    fill_in "Saturated fatty acids", with: @food.saturated_fatty_acids
    fill_in "Selenium mg", with: @food.selenium_mg
    fill_in "Sodium mg", with: @food.sodium_mg
    fill_in "Soluble fiber", with: @food.soluble_fiber
    fill_in "Source", with: @food.source_id
    fill_in "Specification", with: @food.specification
    fill_in "Subcategory", with: @food.subcategory_id
    fill_in "Total polyphenols", with: @food.total_polyphenols
    fill_in "Value", with: @food.value
    fill_in "Vitamin a total", with: @food.vitamin_a_total
    fill_in "Vitamin b1 mg", with: @food.vitamin_b1_mg
    fill_in "Vitamin b2 mg", with: @food.vitamin_b2_mg
    fill_in "Vitamin b4 mg", with: @food.vitamin_b4_mg
    fill_in "Vitamin c mg", with: @food.vitamin_c_mg
    fill_in "Vitamin e mg", with: @food.vitamin_e_mg
    fill_in "Zinc mg", with: @food.zinc_mg
    click_on "Create Food"

    assert_text "Food was successfully created"
    click_on "Back"
  end

  test "updating a Food" do
    visit foods_url
    click_on "Edit", match: :first

    fill_in "Calcium", with: @food.calcium
    fill_in "Calories", with: @food.calories
    fill_in "Carbohydrates", with: @food.carbohydrates
    fill_in "Carotene", with: @food.carotene
    fill_in "Cholesterol", with: @food.cholesterol
    fill_in "Cobalamin", with: @food.cobalamin
    fill_in "Code", with: @food.code
    fill_in "Copper", with: @food.copper
    fill_in "Dietary fiber", with: @food.dietary_fiber
    fill_in "Factor atwater", with: @food.factor_atwater
    fill_in "Folates", with: @food.folates
    fill_in "Grams", with: @food.grams
    fill_in "Gross weight", with: @food.gross_weight
    fill_in "Homemade portion", with: @food.homemade_portion
    fill_in "Humidity", with: @food.humidity
    fill_in "Insoluble fiber", with: @food.insoluble_fiber
    fill_in "Iron mg", with: @food.iron_mg
    fill_in "Lipids", with: @food.lipids
    fill_in "Magnesium mg", with: @food.magnesium_mg
    fill_in "Monounsaturated fatty acids", with: @food.monounsaturated_fatty_acids
    fill_in "Name", with: @food.name
    fill_in "Net weight", with: @food.net_weight
    fill_in "Niacin", with: @food.niacin
    fill_in "Nitrates", with: @food.nitrates
    fill_in "Nitrites", with: @food.nitrites
    fill_in "Orac index", with: @food.orac_index
    fill_in "Other1", with: @food.other1
    fill_in "Other2", with: @food.other2
    fill_in "Other3", with: @food.other3
    fill_in "Pantothenic acid mg", with: @food.pantothenic_acid_mg
    fill_in "Phosphorus mg", with: @food.phosphorus_mg
    fill_in "Polyunsaturated fatty acids", with: @food.polyunsaturated_fatty_acids
    fill_in "Portion", with: @food.portion
    fill_in "Potassium mg", with: @food.potassium_mg
    fill_in "Proteins", with: @food.proteins
    fill_in "Pyridoxine", with: @food.pyridoxine
    fill_in "Retinol", with: @food.retinol
    fill_in "Saturated fatty acids", with: @food.saturated_fatty_acids
    fill_in "Selenium mg", with: @food.selenium_mg
    fill_in "Sodium mg", with: @food.sodium_mg
    fill_in "Soluble fiber", with: @food.soluble_fiber
    fill_in "Source", with: @food.source_id
    fill_in "Specification", with: @food.specification
    fill_in "Subcategory", with: @food.subcategory_id
    fill_in "Total polyphenols", with: @food.total_polyphenols
    fill_in "Value", with: @food.value
    fill_in "Vitamin a total", with: @food.vitamin_a_total
    fill_in "Vitamin b1 mg", with: @food.vitamin_b1_mg
    fill_in "Vitamin b2 mg", with: @food.vitamin_b2_mg
    fill_in "Vitamin b4 mg", with: @food.vitamin_b4_mg
    fill_in "Vitamin c mg", with: @food.vitamin_c_mg
    fill_in "Vitamin e mg", with: @food.vitamin_e_mg
    fill_in "Zinc mg", with: @food.zinc_mg
    click_on "Update Food"

    assert_text "Food was successfully updated"
    click_on "Back"
  end

  test "destroying a Food" do
    visit foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food was successfully destroyed"
  end
end
