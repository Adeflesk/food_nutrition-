require 'json'
require 'food_search'
describe FoodSearch do

  context'check all values can be read' do
     before(:each) do
       @food_search = FoodSearch.new(full_search)
     end

    it"Should return the amount of foods found" do
      expect(@food_search.total).to eq(9)
    end

    it "should return the name of the food search" do
      expect(@food_search.query).to eq("Cod")
    end

    it "should return a hash of 9 items" do
      expect(@food_search.items.count).to eq(9)
    end

    it "should return the ndbno from offset" do
      expect(@food_search.get_item_ndbno(3)).to eq("15015")
    end

    it "should return food group from offset" do
      expect(@food_search.get_item_food_group(3)).to eq("Finfish and Shellfish Products")
    end
  end

  def full_search
    return  JSON.parse('{
        "list": {
          "q": "Cod",
          "sr": "28",
          "start": 0,
          "end": 9,
          "total": 9,
          "group": "",
          "sort": "n",
          "item": [
            {
              "offset": 0,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Atlantic, canned, solids and liquid",
              "ndbno": "15017"
            },
            {
              "offset": 1,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Atlantic, cooked, dry heat",
              "ndbno": "15016"
            },
            {
              "offset": 2,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Atlantic, dried and salted",
              "ndbno": "15018"
            },
            {
              "offset": 3,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Atlantic, raw",
              "ndbno": "15015"
            },
            {
              "offset": 4,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Pacific, cooked, dry heat (may have been previously frozen)",
              "ndbno": "15192"
            },
            {
              "offset": 5,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Pacific, cooked (not previously frozen)",
              "ndbno": "15269"
            },
            {
              "offset": 6,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Pacific, raw (may have been previously frozen)",
              "ndbno": "15019"
            },
            {
              "offset": 7,
              "group": "Finfish and Shellfish Products",
              "name": "Fish, cod, Pacific, raw (not previously frozen)",
              "ndbno": "15268"
            },
            {
              "offset": 8,
              "group": "Fats and Oils",
              "name": "Fish oil, cod liver",
              "ndbno": "04589"
            }
          ]
        }
      }')
  end

end
