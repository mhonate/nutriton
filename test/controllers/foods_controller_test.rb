require 'test_helper'

class FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get foods_url
    assert_response :success
  end

  test "should get new" do
    get new_food_url
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post foods_url, params: { food: { calcium: @food.calcium, calories: @food.calories, carbohydrates: @food.carbohydrates, carotene: @food.carotene, cholesterol: @food.cholesterol, cobalamin: @food.cobalamin, code: @food.code, copper: @food.copper, dietary_fiber: @food.dietary_fiber, factor_atwater: @food.factor_atwater, folates: @food.folates, grams: @food.grams, gross_weight: @food.gross_weight, homemade_portion: @food.homemade_portion, humidity: @food.humidity, insoluble_fiber: @food.insoluble_fiber, iron_mg: @food.iron_mg, lipids: @food.lipids, magnesium_mg: @food.magnesium_mg, monounsaturated_fatty_acids: @food.monounsaturated_fatty_acids, name: @food.name, net_weight: @food.net_weight, niacin: @food.niacin, nitrates: @food.nitrates, nitrites: @food.nitrites, orac_index: @food.orac_index, other1: @food.other1, other2: @food.other2, other3: @food.other3, pantothenic_acid_mg: @food.pantothenic_acid_mg, phosphorus_mg: @food.phosphorus_mg, polyunsaturated_fatty_acids: @food.polyunsaturated_fatty_acids, portion: @food.portion, potassium_mg: @food.potassium_mg, proteins: @food.proteins, pyridoxine: @food.pyridoxine, retinol: @food.retinol, saturated_fatty_acids: @food.saturated_fatty_acids, selenium_mg: @food.selenium_mg, sodium_mg: @food.sodium_mg, soluble_fiber: @food.soluble_fiber, source_id: @food.source_id, specification: @food.specification, subcategory_id: @food.subcategory_id, total_polyphenols: @food.total_polyphenols, value: @food.value, vitamin_a_total: @food.vitamin_a_total, vitamin_b1_mg: @food.vitamin_b1_mg, vitamin_b2_mg: @food.vitamin_b2_mg, vitamin_b4_mg: @food.vitamin_b4_mg, vitamin_c_mg: @food.vitamin_c_mg, vitamin_e_mg: @food.vitamin_e_mg, zinc_mg: @food.zinc_mg } }
    end

    assert_redirected_to food_url(Food.last)
  end

  test "should show food" do
    get food_url(@food)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_url(@food)
    assert_response :success
  end

  test "should update food" do
    patch food_url(@food), params: { food: { calcium: @food.calcium, calories: @food.calories, carbohydrates: @food.carbohydrates, carotene: @food.carotene, cholesterol: @food.cholesterol, cobalamin: @food.cobalamin, code: @food.code, copper: @food.copper, dietary_fiber: @food.dietary_fiber, factor_atwater: @food.factor_atwater, folates: @food.folates, grams: @food.grams, gross_weight: @food.gross_weight, homemade_portion: @food.homemade_portion, humidity: @food.humidity, insoluble_fiber: @food.insoluble_fiber, iron_mg: @food.iron_mg, lipids: @food.lipids, magnesium_mg: @food.magnesium_mg, monounsaturated_fatty_acids: @food.monounsaturated_fatty_acids, name: @food.name, net_weight: @food.net_weight, niacin: @food.niacin, nitrates: @food.nitrates, nitrites: @food.nitrites, orac_index: @food.orac_index, other1: @food.other1, other2: @food.other2, other3: @food.other3, pantothenic_acid_mg: @food.pantothenic_acid_mg, phosphorus_mg: @food.phosphorus_mg, polyunsaturated_fatty_acids: @food.polyunsaturated_fatty_acids, portion: @food.portion, potassium_mg: @food.potassium_mg, proteins: @food.proteins, pyridoxine: @food.pyridoxine, retinol: @food.retinol, saturated_fatty_acids: @food.saturated_fatty_acids, selenium_mg: @food.selenium_mg, sodium_mg: @food.sodium_mg, soluble_fiber: @food.soluble_fiber, source_id: @food.source_id, specification: @food.specification, subcategory_id: @food.subcategory_id, total_polyphenols: @food.total_polyphenols, value: @food.value, vitamin_a_total: @food.vitamin_a_total, vitamin_b1_mg: @food.vitamin_b1_mg, vitamin_b2_mg: @food.vitamin_b2_mg, vitamin_b4_mg: @food.vitamin_b4_mg, vitamin_c_mg: @food.vitamin_c_mg, vitamin_e_mg: @food.vitamin_e_mg, zinc_mg: @food.zinc_mg } }
    assert_redirected_to food_url(@food)
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete food_url(@food)
    end

    assert_redirected_to foods_url
  end
end
