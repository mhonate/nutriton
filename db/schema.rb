# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_03_022405) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compounds", force: :cascade do |t|
    t.integer "food_id"
    t.integer "recipe_id"
    t.float "grams"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_compounds_on_food_id"
    t.index ["recipe_id"], name: "index_compounds_on_recipe_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "portion"
    t.integer "grams"
    t.integer "homemade_portion"
    t.string "specification"
    t.float "value_per_100g"
    t.float "gross_weight_g"
    t.float "net_weight_g"
    t.float "humidity"
    t.float "factor_atwater"
    t.float "calories"
    t.float "proteins_g"
    t.float "carbohydrates_g"
    t.float "dietary_fiber_g"
    t.float "soluble_fiber_g"
    t.float "insoluble_fiber_g"
    t.float "lipids"
    t.float "saturated_fatty_acids_g"
    t.float "monounsaturated_fatty_acids_g"
    t.float "polyunsaturated_fatty_acids_g"
    t.float "cholesterol_mg"
    t.float "carotene_re"
    t.float "retinol_er"
    t.float "vitamin_a_total_re"
    t.float "vitamin_b1_mg"
    t.float "vitamin_b2_mg"
    t.float "niacin_mg"
    t.float "vitamin_b4_mg"
    t.float "pyridoxine_mg"
    t.float "cobalamin_mg"
    t.float "folates_mcg"
    t.float "pantothenic_acid_mg"
    t.float "vitamin_c_mg"
    t.float "vitamin_e_mg"
    t.float "calcium_mg"
    t.float "copper_mg"
    t.float "iron_mg"
    t.float "magnesium_mg"
    t.float "phosphorus_mg"
    t.float "potassium_mg"
    t.float "selenium_mg"
    t.float "sodium_mg"
    t.float "zinc_mg"
    t.float "orac_index"
    t.float "total_polyphenols"
    t.float "nitrates"
    t.float "nitrites"
    t.float "other1"
    t.float "other2"
    t.float "other3"
    t.integer "subcategory_id"
    t.integer "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "english_name"
    t.index ["source_id"], name: "index_foods_on_source_id"
    t.index ["subcategory_id"], name: "index_foods_on_subcategory_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.boolean "editable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

end
