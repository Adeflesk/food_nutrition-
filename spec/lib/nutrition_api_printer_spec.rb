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

    it "creates food_report " do
      naa = instance_double("NutritionApiAdapter")
      test_json = JSON.parse( ' {
                        "report": {
                          "sr": "28",
                          "type": "basic",
                          "food": {
                            "ndbno": "01009",
                            "name": "cheese, cheddar",
                            "nutrients": [
                              {
                                "nutrient_id": "255",
                                "name": "water",
                                "group": "proximates",
                                "unit": "g",
                                "value": "37.02",
                                "measures": [
                                  {
                                    "label": "cup, diced",
                                    "eqv": 132.0,
                                    "qty": 1.0,
                                    "value": "48.87"
                                  },
                                  {
                                    "label": "cup, melted",
                                    "eqv": 244.0,
                                    "qty": 1.0,
                                    "value": "90.33"
                                  }

                                ]
                              }
                          ]
                          },
                          "footnotes": [

                          ]
  }
}')
      allow(naa).to receive(:get_food_report).and_return(test_json)
      np = NutritionApiPrinter.new(naa)
      np.get_food_report('01009','b')
      expect(JSON.parse(File.read('data/food_report.json'))).to eq(test_json)
    end

    it "creates a full nutrient report"do
     naa = instance_double("NutritionApiAdapter")
     test_json =JSON.parse( '{
                    "report": {
                      "sr": "28",
                      "groups": "All groups",
                      "subset": "All foods",
                      "end": 150,
                      "start": 0,
                      "total": 8490,
                      "foods": [
                          {
                          "ndbno": "09427",
                          "name": "Abiyuch, raw",
                          "weight": 114.0,
                          "measure": "0.5 cup",
                          "nutrients": [
                            {
                              "nutrient_id": "208",
                              "nutrient": "Energy",
                              "unit": "kcal",
                              "value": "79",
                              "gm": 69.0
                            },
                            {
                              "nutrient_id": "204",
                              "nutrient": "Total lipid (fat)",
                              "unit": "g",
                              "value": "0.11",
                              "gm": 0.1
                            },
                            {
                              "nutrient_id": "205",
                              "nutrient": "Carbohydrate, by difference",
                              "unit": "g",
                              "value": "20.06",
                              "gm": 17.6
                            }
                          ]
                          }
                    ]
                    }
                  }')
     allow(naa).to receive(:get_nutrient_report_all).and_return(test_json)
     np = NutritionApiPrinter.new(naa)
     np.get_nutrient_report_all(["205","204","208"])
     expect(JSON.parse(File.read('data/nutrient_report_all.json'))).to eq(test_json)

    end

    it "creates a nutrient food group file" do
      naa = instance_double("NutritionApiAdapter")
      test_json =JSON.parse('{
      "report": {
        "sr": "28",
        "groups": [
          {
            "id": "0100",
            "description": "Dairy and Egg Products"
          },
          {
            "id": "0500",
            "description": "Poultry Products"
          }
        ],
        "subset": "All foods",
       "foods": [
          {
            "ndbno": "43205",
            "name": "Beverage, instant breakfast powder, chocolate, not reconstituted",
            "weight": 7.4,
            "measure": "1.0 tbsp",
            "nutrients": [
              {
                "nutrient_id": "208",
                "nutrient": "Energy",
                "unit": "kcal",
                "value": "26",
                "gm": 353.0
              }
                     ]
          }
        ]
      }
    }')
      allow(naa).to receive(:get_nutrient_report_food_group).and_return(test_json)
      np = NutritionApiPrinter.new(naa)
      np.get_nutrient_report_food_group(["205","204","208","269"],["0100","0500"])
     expect(JSON.parse(File.read('data/nutrient_report_food_group.json'))).to eq(test_json)
    end

   it "creates a nutrient report for food file" do
      naa = instance_double("NutritionApiAdapter")
      test_json =JSON.parse('{
  "report": {
    "sr": "28",
    "groups": "All groups",
    "subset": "All foods",
    "end": 1,
    "start": 0,
    "total": 1,
    "foods": [
      {
        "ndbno": "01009",
        "name": "Cheese, cheddar",
        "weight": 132.0,
        "measure": "1.0 cup, diced",
        "nutrients": [
          {
            "nutrient_id": "208",
            "nutrient": "Energy",
            "unit": "kcal",
            "value": "533",
            "gm": 404.0
          },
          {
            "nutrient_id": "204",
            "nutrient": "Total lipid (fat)",
            "unit": "g",
            "value": "43.97",
            "gm": 33.31
          },
          {
            "nutrient_id": "205",
            "nutrient": "Carbohydrate, by difference",
            "unit": "g",
            "value": "4.08",
            "gm": 3.09
          }
        ]
      }
    ]
  }
}')
      allow(naa).to receive(:get_nutrient_report_for_food).and_return(test_json)
      np = NutritionApiPrinter.new(naa)
      np.get_nutrient_report_for_food("01009",["205","204","208","269"])
     expect(JSON.parse(File.read('data/nutrient_report_for_food.json'))).to eq(test_json)
    end

  end
end
