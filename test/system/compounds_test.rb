require "application_system_test_case"

class CompoundsTest < ApplicationSystemTestCase
  setup do
    @compound = compounds(:one)
  end

  test "visiting the index" do
    visit compounds_url
    assert_selector "h1", text: "Compounds"
  end

  test "creating a Compound" do
    visit compounds_url
    click_on "New Compound"

    fill_in "Food", with: @compound.food_id
    fill_in "Grams", with: @compound.grams
    fill_in "Recipe", with: @compound.recipe_id
    click_on "Create Compound"

    assert_text "Compound was successfully created"
    click_on "Back"
  end

  test "updating a Compound" do
    visit compounds_url
    click_on "Edit", match: :first

    fill_in "Food", with: @compound.food_id
    fill_in "Grams", with: @compound.grams
    fill_in "Recipe", with: @compound.recipe_id
    click_on "Update Compound"

    assert_text "Compound was successfully updated"
    click_on "Back"
  end

  test "destroying a Compound" do
    visit compounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compound was successfully destroyed"
  end
end
