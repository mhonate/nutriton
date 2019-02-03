require 'test_helper'

class CompoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compound = compounds(:one)
  end

  test "should get index" do
    get compounds_url
    assert_response :success
  end

  test "should get new" do
    get new_compound_url
    assert_response :success
  end

  test "should create compound" do
    assert_difference('Compound.count') do
      post compounds_url, params: { compound: { food_id: @compound.food_id, grams: @compound.grams, recipe_id: @compound.recipe_id } }
    end

    assert_redirected_to compound_url(Compound.last)
  end

  test "should show compound" do
    get compound_url(@compound)
    assert_response :success
  end

  test "should get edit" do
    get edit_compound_url(@compound)
    assert_response :success
  end

  test "should update compound" do
    patch compound_url(@compound), params: { compound: { food_id: @compound.food_id, grams: @compound.grams, recipe_id: @compound.recipe_id } }
    assert_redirected_to compound_url(@compound)
  end

  test "should destroy compound" do
    assert_difference('Compound.count', -1) do
      delete compound_url(@compound)
    end

    assert_redirected_to compounds_url
  end
end
