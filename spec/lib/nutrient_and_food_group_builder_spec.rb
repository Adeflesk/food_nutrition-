require 'spec_helper'
require 'nutrient_and_food_group_builder'


describe NutrientAndFoodGroupBuilder do

  it "builds a nutrients list for api requests" do
    list_of_nutrients = ["205","208","363"]
    expected = "&nutrients=205&nutrients=208&nutrients=363"
    nb = NutrientAndFoodGroupBuilder.new
    expect(nb.api_nutrients_list_builder(list_of_nutrients)).to eq(expected)
  end

  it "builds a food group list" do
    list_of_fg = ["0100","0500"]
    expected ="&fg=0100&fg=0500"
    fg = NutrientAndFoodGroupBuilder.new
    expect(fg.api_food_group_list_builder(list_of_fg)).to eq(expected)
  end
end
