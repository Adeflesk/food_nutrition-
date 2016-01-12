require 'recipe'
describe Recipe do

  context "Creates a new Recipe"
  before(:each)do
    @test_recipe = Recipe.new("Summer Pea Pasta")

  end
  it "Will create a new recipe with title" do
    expect(@test_recipe.title).to eq("Summer Pea Pasta")
  end
end

