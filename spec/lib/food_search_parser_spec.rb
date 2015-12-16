require 'spec_helper'
require 'food_search_parser'

describe FoodSearchParser do

  def search_results
    return '{
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
} '
  end

  context "Food Search parser returns a list object" do

    it "it sould return a search list object with" do
      naa = instance_double("NutritionApiAdapter")
      allow(naa).to receive(:search_food).and_return(search_results)
      np = FoodSearchParser.new(na)
      expect(search_list.total).to eq(9)
    end
  end
end
