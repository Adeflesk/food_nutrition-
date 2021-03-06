require 'food_report'
require 'json'
describe FoodReport do

  context "Creates a food report"do
  before(:each) do
    @food_report = FoodReport.new(food_report_full)
  end

  it "will show the type of report" do
    expect(@food_report.report_type).to eq("Full")
  end

  it "will show the ndbno_number" do
    expect(@food_report.ndbno_number).to eq("01009")
  end

  it "will show the food name" do
    expect(@food_report.food_name).to eq("Cheese, cheddar")
  end

  it "will show the food goup" do
    expect(@food_report.food_group).to eq("Dairy and Egg Products")
  end

  it "will send an array of nutrients" do
    expect(@food_report.nutrients.count).to eq(118)
  end
  end

  def food_report_full
    return JSON.parse('{
                      "report": {
                        "sr": "28",
                        "type": "Full",
                        "food": {
                          "ndbno": "01009",
                          "name": "Cheese, cheddar",
                          "fg": "Dairy and Egg Products",
                          "sn": "",
                          "cn": "",
                          "manu": "",
                          "nf": 0.0,
                          "cf": 0.0,
                          "ff": 0.0,
                          "pf": 0.0,
                          "r": "0%",
                          "rd": "",
                          "nutrients": [
                            {
                              "nutrient_id": 255,
                              "name": "Water",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 37.02,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.190",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 48.87
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 90.33
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 41.83
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 10.5
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 6.29
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 10.37
                                }
                              ]
                            },
                            {
                              "nutrient_id": 208,
                              "name": "Energy",
                              "group": "Proximates",
                              "unit": "kcal",
                              "value": 404.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 533.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 986.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 457.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 115.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 69.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 113.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 268,
                              "name": "Energy",
                              "group": "Proximates",
                              "unit": "kJ",
                              "value": 1689.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 2229.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 4121.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1909.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 479.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 287.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 473.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 203,
                              "name": "Protein",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 22.87,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.132",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 30.19
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 55.8
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 25.84
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 6.48
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 3.89
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 6.4
                                }
                              ]
                            },
                            {
                              "nutrient_id": 204,
                              "name": "Total lipid (fat)",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 33.31,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.156",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 43.97
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 81.28
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 37.64
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 9.44
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 5.66
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 9.33
                                }
                              ]
                            },
                            {
                              "nutrient_id": 207,
                              "name": "Ash",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 3.71,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.028",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 4.9
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 9.05
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 4.19
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 1.05
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.63
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 1.04
                                }
                              ]
                            },
                            {
                              "nutrient_id": 205,
                              "name": "Carbohydrate, by difference",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 3.09,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 4.08
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 7.54
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 3.49
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.88
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.53
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.87
                                }
                              ]
                            },
                            {
                              "nutrient_id": 291,
                              "name": "Fiber, total dietary",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 269,
                              "name": "Sugars, total",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.48,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.63
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.17
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.54
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.14
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.08
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.13
                                }
                              ]
                            },
                            {
                              "nutrient_id": 210,
                              "name": "Sucrose",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": [
                                1
                              ],
                              "dp": 4,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 211,
                              "name": "Glucose (dextrose)",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.26,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 5,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.34
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.63
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.29
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.07
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.04
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.07
                                }
                              ]
                            },
                            {
                              "nutrient_id": 212,
                              "name": "Fructose",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": [
                                1
                              ],
                              "dp": 4,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 213,
                              "name": "Lactose",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.12,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 5,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.16
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.29
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.14
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.03
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.02
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.03
                                }
                              ]
                            },
                            {
                              "nutrient_id": 214,
                              "name": "Maltose",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": [
                                1
                              ],
                              "dp": 4,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 287,
                              "name": "Galactose",
                              "group": "Proximates",
                              "unit": "g",
                              "value": 0.1,
                              "sourcecode": [
                                1
                              ],
                              "dp": 4,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.13
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.24
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.11
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.03
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.02
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.03
                                }
                              ]
                            },
                            {
                              "nutrient_id": 301,
                              "name": "Calcium, Ca",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 710.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "9.090",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 937.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1732.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 802.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 201.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 121.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 199.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 303,
                              "name": "Iron, Fe",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 0.14,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.006",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.18
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.34
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.16
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.04
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.02
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.04
                                }
                              ]
                            },
                            {
                              "nutrient_id": 304,
                              "name": "Magnesium, Mg",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 27.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.309",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 36.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 66.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 31.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 8.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 5.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 8.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 305,
                              "name": "Phosphorus, P",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 455.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "3.702",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 601.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1110.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 514.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 129.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 77.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 127.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 306,
                              "name": "Potassium, K",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 76.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "1.669",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 100.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 185.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 86.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 22.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 13.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 21.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 307,
                              "name": "Sodium, Na",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 653.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "13.172",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 862.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1593.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 738.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 185.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 111.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 183.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 309,
                              "name": "Zinc, Zn",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 3.64,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.040",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 4.8
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 8.88
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 4.11
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 1.03
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.62
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 1.02
                                }
                              ]
                            },
                            {
                              "nutrient_id": 312,
                              "name": "Copper, Cu",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 0.03,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.002",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.04
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.073
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.034
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.009
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.005
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.008
                                }
                              ]
                            },
                            {
                              "nutrient_id": 315,
                              "name": "Manganese, Mn",
                              "group": "Minerals",
                              "unit": "mg",
                              "value": 0.027,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 39,
                              "se": "0.002",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.036
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.066
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.031
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.008
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.005
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.008
                                }
                              ]
                            },
                            {
                              "nutrient_id": 317,
                              "name": "Selenium, Se",
                              "group": "Minerals",
                              "unit": "µg",
                              "value": 28.5,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 29,
                              "se": "1.055",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 37.6
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 69.5
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 32.2
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 8.1
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 4.8
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 8.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 313,
                              "name": "Fluoride, F",
                              "group": "Minerals",
                              "unit": "µg",
                              "value": 34.9,
                              "sourcecode": [
                                3
                              ],
                              "dp": 1,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 46.1
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 85.2
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 39.4
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 9.9
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 5.9
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 9.8
                                }
                              ]
                            },
                            {
                              "nutrient_id": 401,
                              "name": "Vitamin C, total ascorbic acid",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 404,
                              "name": "Thiamin",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.029,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 28,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.038
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.071
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.033
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.008
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.005
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.008
                                }
                              ]
                            },
                            {
                              "nutrient_id": 405,
                              "name": "Riboflavin",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.428,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 27,
                              "se": "0.014",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.565
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.044
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.484
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.121
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.073
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.12
                                }
                              ]
                            },
                            {
                              "nutrient_id": 406,
                              "name": "Niacin",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.059,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 28,
                              "se": "0.006",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.078
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.144
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.067
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.017
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.01
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.017
                                }
                              ]
                            },
                            {
                              "nutrient_id": 410,
                              "name": "Pantothenic acid",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.41,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 25,
                              "se": "0.018",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.541
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.463
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.116
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.07
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.115
                                }
                              ]
                            },
                            {
                              "nutrient_id": 415,
                              "name": "Vitamin B-6",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.066,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 28,
                              "se": "0.003",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.087
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.161
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.075
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.019
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.011
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.018
                                }
                              ]
                            },
                            {
                              "nutrient_id": 417,
                              "name": "Folate, total",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 27.0,
                              "sourcecode": [
                                1
                              ],
                              "dp": 4,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 36.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 66.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 31.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 8.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 5.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 8.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 431,
                              "name": "Folic acid",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 432,
                              "name": "Folate, food",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 27.0,
                              "sourcecode": "",
                              "dp": 4,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 36.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 66.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 31.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 8.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 5.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 8.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 435,
                              "name": "Folate, DFE",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 27.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 36.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 66.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 31.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 8.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 5.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 8.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 421,
                              "name": "Choline, total",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 16.5,
                              "sourcecode": [
                                3
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 21.8
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 40.3
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 18.6
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 4.7
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 2.8
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 4.6
                                }
                              ]
                            },
                            {
                              "nutrient_id": 454,
                              "name": "Betaine",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.7,
                              "sourcecode": [
                                3
                              ],
                              "dp": 1,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.9
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.7
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.8
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.2
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.1
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.2
                                }
                              ]
                            },
                            {
                              "nutrient_id": 418,
                              "name": "Vitamin B-12",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 1.1,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 28,
                              "se": "0.054",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.45
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.68
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.24
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.31
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.19
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.31
                                }
                              ]
                            },
                            {
                              "nutrient_id": 578,
                              "name": "Vitamin B-12, added",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 320,
                              "name": "Vitamin A, RAE",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 330.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 436.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 805.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 373.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 94.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 56.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 92.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 319,
                              "name": "Retinol",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 330.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 7,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 436.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 805.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 373.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 94.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 56.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 92.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 321,
                              "name": "Carotene, beta",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 85.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 112.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 207.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 96.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 24.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 14.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 24.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 322,
                              "name": "Carotene, alpha",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 334,
                              "name": "Cryptoxanthin, beta",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 318,
                              "name": "Vitamin A, IU",
                              "group": "Vitamins",
                              "unit": "IU",
                              "value": 1242.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1639.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 3030.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1403.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 352.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 211.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 348.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 337,
                              "name": "Lycopene",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 338,
                              "name": "Lutein + zeaxanthin",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 323,
                              "name": "Vitamin E (alpha-tocopherol)",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.71,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 13,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.94
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.73
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.8
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.2
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.12
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.2
                                }
                              ]
                            },
                            {
                              "nutrient_id": 573,
                              "name": "Vitamin E, added",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 341,
                              "name": "Tocopherol, beta",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 13,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 342,
                              "name": "Tocopherol, gamma",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 13,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 343,
                              "name": "Tocopherol, delta",
                              "group": "Vitamins",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 13,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 328,
                              "name": "Vitamin D (D2 + D3)",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.6,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.8
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.5
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.7
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.2
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.1
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.2
                                }
                              ]
                            },
                            {
                              "nutrient_id": 326,
                              "name": "Vitamin D3 (cholecalciferol)",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 0.6,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.8
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.5
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.7
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.2
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.1
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.2
                                }
                              ]
                            },
                            {
                              "nutrient_id": 324,
                              "name": "Vitamin D",
                              "group": "Vitamins",
                              "unit": "IU",
                              "value": 24.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 32.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 59.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 27.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 7.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 4.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 7.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 430,
                              "name": "Vitamin K (phylloquinone)",
                              "group": "Vitamins",
                              "unit": "µg",
                              "value": 2.4,
                              "sourcecode": [
                                1
                              ],
                              "dp": 2,
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 3.2
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 5.9
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 2.7
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.7
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.4
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.7
                                }
                              ]
                            },
                            {
                              "nutrient_id": 606,
                              "name": "Fatty acids, total saturated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 18.867,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 24.904
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 46.035
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 21.32
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 5.349
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 3.207
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 5.283
                                }
                              ]
                            },
                            {
                              "nutrient_id": 607,
                              "name": "4:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.634,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.005",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.837
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.547
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.716
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.18
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.108
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.178
                                }
                              ]
                            },
                            {
                              "nutrient_id": 608,
                              "name": "6:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.536,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.005",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.708
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.308
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.606
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.152
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.091
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.15
                                }
                              ]
                            },
                            {
                              "nutrient_id": 609,
                              "name": "8:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.337,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.004",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.445
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.822
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.381
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.096
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.057
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.094
                                }
                              ]
                            },
                            {
                              "nutrient_id": 610,
                              "name": "10:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.82,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.008",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.082
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.001
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.927
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.232
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.139
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.23
                                }
                              ]
                            },
                            {
                              "nutrient_id": 611,
                              "name": "12:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.935,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.009",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.234
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.281
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.057
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.265
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.159
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.262
                                }
                              ]
                            },
                            {
                              "nutrient_id": 612,
                              "name": "14:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 3.005,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.028",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 3.967
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 7.332
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 3.396
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.852
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.511
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.841
                                }
                              ]
                            },
                            {
                              "nutrient_id": 652,
                              "name": "15:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.318,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.002",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.42
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.776
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.359
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.09
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.054
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.089
                                }
                              ]
                            },
                            {
                              "nutrient_id": 613,
                              "name": "16:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 8.625,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.053",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 11.385
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 21.045
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 9.746
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 2.445
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 1.466
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 2.415
                                }
                              ]
                            },
                            {
                              "nutrient_id": 653,
                              "name": "17:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.191,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.002",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.252
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.466
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.216
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.054
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.032
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.053
                                }
                              ]
                            },
                            {
                              "nutrient_id": 614,
                              "name": "18:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 3.394,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.044",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 4.48
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 8.281
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 3.835
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.962
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.577
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.95
                                }
                              ]
                            },
                            {
                              "nutrient_id": 615,
                              "name": "20:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.048,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.063
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.117
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.054
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.014
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.008
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.013
                                }
                              ]
                            },
                            {
                              "nutrient_id": 624,
                              "name": "22:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.015,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.02
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.037
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.017
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.004
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.003
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.004
                                }
                              ]
                            },
                            {
                              "nutrient_id": 654,
                              "name": "24:0",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.008,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.011
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.02
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.009
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                }
                              ]
                            },
                            {
                              "nutrient_id": 645,
                              "name": "Fatty acids, total monounsaturated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 9.246,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 12.205
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 22.56
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 10.448
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 2.621
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 1.572
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 2.589
                                }
                              ]
                            },
                            {
                              "nutrient_id": 625,
                              "name": "14:1",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.296,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.005",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.391
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.722
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.334
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.084
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.05
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.083
                                }
                              ]
                            },
                            {
                              "nutrient_id": 697,
                              "name": "15:1",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 626,
                              "name": "16:1 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.504,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.006",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.665
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.23
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.57
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.143
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.086
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.141
                                }
                              ]
                            },
                            {
                              "nutrient_id": 662,
                              "name": "16:1 t",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.101,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.133
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.246
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.114
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.029
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.017
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.028
                                }
                              ]
                            },
                            {
                              "nutrient_id": 687,
                              "name": "17:1",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.059,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.078
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.144
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.067
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.017
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.01
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.017
                                }
                              ]
                            },
                            {
                              "nutrient_id": 617,
                              "name": "18:1 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 7.403,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.062",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 9.772
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 18.063
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 8.365
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 2.099
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 1.259
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 2.073
                                }
                              ]
                            },
                            {
                              "nutrient_id": 663,
                              "name": "18:1 t",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.816,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.014",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.077
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.991
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.922
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.231
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.139
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.228
                                }
                              ]
                            },
                            {
                              "nutrient_id": 628,
                              "name": "20:1",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.065,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.086
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.159
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.073
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.018
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.011
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.018
                                }
                              ]
                            },
                            {
                              "nutrient_id": 630,
                              "name": "22:1 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.001,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 664,
                              "name": "22:1 t",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 671,
                              "name": "24:1 c",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.001,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 646,
                              "name": "Fatty acids, total polyunsaturated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 1.421,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.876
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 3.467
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.606
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.403
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.242
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.398
                                }
                              ]
                            },
                            {
                              "nutrient_id": 618,
                              "name": "18:2 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 1.171,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.021",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.546
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.857
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.323
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.332
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.199
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.328
                                }
                              ]
                            },
                            {
                              "nutrient_id": 619,
                              "name": "18:3 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.114,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.004",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.15
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.278
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.129
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.032
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.019
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.032
                                }
                              ]
                            },
                            {
                              "nutrient_id": 627,
                              "name": "18:4",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 672,
                              "name": "20:2 n-6 c,c",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.007,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.009
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.017
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.008
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                }
                              ]
                            },
                            {
                              "nutrient_id": 689,
                              "name": "20:3 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.037,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.049
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.09
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.042
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.01
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.006
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.01
                                }
                              ]
                            },
                            {
                              "nutrient_id": 620,
                              "name": "20:4 undifferentiated",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.053,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.07
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.129
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.06
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.015
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.009
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.015
                                }
                              ]
                            },
                            {
                              "nutrient_id": 629,
                              "name": "20:5 n-3 (EPA)",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.01,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.013
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.024
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.011
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.003
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.003
                                }
                              ]
                            },
                            {
                              "nutrient_id": 858,
                              "name": "22:4",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.009,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.012
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.022
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.01
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.003
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.003
                                }
                              ]
                            },
                            {
                              "nutrient_id": 631,
                              "name": "22:5 n-3 (DPA)",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.017,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.001",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.022
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.041
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.019
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.005
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.003
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.005
                                }
                              ]
                            },
                            {
                              "nutrient_id": 621,
                              "name": "22:6 n-3 (DHA)",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.001,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 40,
                              "se": "0.000",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.002
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.001
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 605,
                              "name": "Fatty acids, total trans",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.917,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.21
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.237
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.036
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.26
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.156
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.257
                                }
                              ]
                            },
                            {
                              "nutrient_id": 693,
                              "name": "Fatty acids, total trans-monoenoic",
                              "group": "Lipids",
                              "unit": "g",
                              "value": 0.917,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.21
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.237
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.036
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.26
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.156
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.257
                                }
                              ]
                            },
                            {
                              "nutrient_id": 601,
                              "name": "Cholesterol",
                              "group": "Lipids",
                              "unit": "mg",
                              "value": 99.0,
                              "sourcecode": [
                                1,
                                2
                              ],
                              "dp": 29,
                              "se": "0.507",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 131.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 242.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 112.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 28.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 17.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 28.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 501,
                              "name": "Tryptophan",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.547,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.722
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.335
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.618
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.155
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.093
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.153
                                }
                              ]
                            },
                            {
                              "nutrient_id": 502,
                              "name": "Threonine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.044,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.378
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.547
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.18
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.296
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.177
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.292
                                }
                              ]
                            },
                            {
                              "nutrient_id": 503,
                              "name": "Isoleucine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.206,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.592
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.943
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.363
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.342
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.205
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.338
                                }
                              ]
                            },
                            {
                              "nutrient_id": 504,
                              "name": "Leucine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.939,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 2.559
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 4.731
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 2.191
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.55
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.33
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.543
                                }
                              ]
                            },
                            {
                              "nutrient_id": 505,
                              "name": "Lysine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.025,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.353
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.501
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.158
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.291
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.174
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.287
                                }
                              ]
                            },
                            {
                              "nutrient_id": 506,
                              "name": "Methionine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.547,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.722
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.335
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.618
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.155
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.093
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.153
                                }
                              ]
                            },
                            {
                              "nutrient_id": 507,
                              "name": "Cystine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.123,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.162
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.3
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.139
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.035
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.021
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.034
                                }
                              ]
                            },
                            {
                              "nutrient_id": 508,
                              "name": "Phenylalanine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.074,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.418
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.621
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.214
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.304
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.183
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.301
                                }
                              ]
                            },
                            {
                              "nutrient_id": 509,
                              "name": "Tyrosine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.108,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.463
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 2.704
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.252
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.314
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.188
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.31
                                }
                              ]
                            },
                            {
                              "nutrient_id": 510,
                              "name": "Valine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.404,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.853
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 3.426
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.587
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.398
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.239
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.393
                                }
                              ]
                            },
                            {
                              "nutrient_id": 511,
                              "name": "Arginine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.547,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.722
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.335
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.618
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.155
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.093
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.153
                                }
                              ]
                            },
                            {
                              "nutrient_id": 512,
                              "name": "Histidine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.547,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.722
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.335
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.618
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.155
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.093
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.153
                                }
                              ]
                            },
                            {
                              "nutrient_id": 513,
                              "name": "Alanine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.751,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.991
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.832
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.849
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.213
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.128
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.21
                                }
                              ]
                            },
                            {
                              "nutrient_id": 514,
                              "name": "Aspartic acid",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 1.734,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 2.289
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 4.231
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 1.959
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.492
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.295
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.486
                                }
                              ]
                            },
                            {
                              "nutrient_id": 515,
                              "name": "Glutamic acid",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 4.735,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 6.25
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 11.553
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 5.351
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 1.342
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.805
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 1.326
                                }
                              ]
                            },
                            {
                              "nutrient_id": 516,
                              "name": "Glycine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.547,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.722
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.335
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.618
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.155
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.093
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.153
                                }
                              ]
                            },
                            {
                              "nutrient_id": 517,
                              "name": "Proline",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 2.497,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 3.296
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 6.093
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 2.822
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.708
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.424
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.699
                                }
                              ]
                            },
                            {
                              "nutrient_id": 518,
                              "name": "Serine",
                              "group": "Amino Acids",
                              "unit": "g",
                              "value": 0.78,
                              "sourcecode": [
                                4
                              ],
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 1.03
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 1.903
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.881
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.221
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.133
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.218
                                }
                              ]
                            },
                            {
                              "nutrient_id": 221,
                              "name": "Alcohol, ethyl",
                              "group": "Other",
                              "unit": "g",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 262,
                              "name": "Caffeine",
                              "group": "Other",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            },
                            {
                              "nutrient_id": 263,
                              "name": "Theobromine",
                              "group": "Other",
                              "unit": "mg",
                              "value": 0.0,
                              "sourcecode": "",
                              "dp": "",
                              "se": "",
                              "measures": [
                                {
                                  "label": "cup, diced",
                                  "eqv": 132.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, melted",
                                  "eqv": 244.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cup, shredded",
                                  "eqv": 113.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "oz",
                                  "eqv": 28.35,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "cubic inch",
                                  "eqv": 17.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                },
                                {
                                  "label": "slice (1 oz)",
                                  "eqv": 28.0,
                                  "qty": 1.0,
                                  "value": 0.0
                                }
                              ]
                            }
                          ]
                        },
                        "sources": [
                          {
                            "id": 1,
                            "title": "National Food and Nutrient Analysis Program Wave 17e",
                            "authors": "Nutrient Data Laboratory, ARS, USDA",
                            "vol": "Beltsville",
                            "iss": "MD",
                            "year": "2013"
                          },
                          {
                            "id": 2,
                            "title": "National Food and Nutrient Analysis Program Wave 19b",
                            "authors": "Nutrient Data Laboratory, ARS, USDA",
                            "vol": "Beltsville",
                            "iss": "MD",
                            "year": "2014"
                          },
                          {
                            "id": 3,
                            "title": "National Food and Nutrient Analysis Program Wave 4b",
                            "authors": "Nutrient Data Laboratory, ARS, USDA",
                            "vol": "Beltsville",
                            "iss": "MD",
                            "year": "2001"
                          },
                          {
                            "id": 4,
                            "title": "National Food and Nutrient Analysis Program Wave 4c",
                            "authors": "Nutrient Data Laboratory, ARS, USDA",
                            "vol": "Beltsville",
                            "iss": "MD",
                            "year": "2001"
                          }
                        ],
                        "footnotes": [

                        ],
                        "langual": [

                        ]
                      }
                    }')
    end

end
