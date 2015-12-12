require 'spec_helper'
require 'nutrition_api_printer'
require 'json'

describe NutritionApiPrinter do

  context "Clears folders before creating"do

   it "should clear data directory on init"do
     naa = instance_double("NutritionApiAdapter")
     np = NutritionApiPrinter.new(naa)
     expect(Dir['data/*'].empty?).to be_truthy
   end
  end

  context "Creates files for each action"do
    it "should create a search report for a food"do
      naa = instance_double("NutritionApiAdapter")
      test_json =JSON.parse('{
                "list": {
                  "q": "Cod",
                  "item": [
                    {
                      "offset": 0,
                      "group": "Finfish and Shellfish Products",
                      "name": "Fish, cod, Atlantic, canned, solids and liquid",
                      "ndbno": "15017"
                    }
                  ]
                }
              }')

      allow(naa).to receive(:get_food).and_return(test_json)
      np = NutritionApiPrinter.new(naa)
      np.get_food("Cod",1,0)
      expect(Dir['data/*'].empty?).to be_falsey
      expect(JSON.parse(File.read('data/search.json'))).to eq(test_json)
    end

    it "should create a food_list  for a food"do
      naa = instance_double("NutritionApiAdapter")
      test_json = JSON.parse('{
                                  "list": {
                                    "lt": "f",
                                    "start": 0,
                                    "end": 2,
                                    "total": 2,
                                    "sr": "28",
                                    "sort": "n",
                                    "item": [
                                      {
                                        "offset": 0,
                                        "id": "09427",
                                        "name": "Abiyuch, raw"
                                      },
                                      {
                                        "offset": 1,
                                        "id": "09002",
                                        "name": "Acerola juice, raw"
                                      }
                                    ]
                                  }
}')

      allow(naa).to receive(:get_food_list).and_return(test_json)
      np = NutritionApiPrinter.new(naa)
      np.get_food_list("f",'n',2,0)
      expect(JSON.parse(File.read('data/food_list.json'))).to eq(test_json)

    end
  end
end
