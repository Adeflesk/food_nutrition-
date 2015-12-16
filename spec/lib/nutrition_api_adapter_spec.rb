require 'spec_helper'
require 'nutrition_api_adapter'

describe NutritionApiAdapter do

  context "building api urls" do
    before do
      setupparams = instance_double("SetupParams",
                                    :api_key => "api_key=DEMO_KEY",
                                    :api_host => "http://api.nal.usda.gov/ndb/",
                                    :api_search => "search/?format=json&q=")
      @na = NutritionApiAdapter.new(setupparams)
    end

    it "builds the correct get food url" do
      expected ="http://api.nal.usda.gov/ndb/search/?format=json&q=Cod&sort=n&max=20&offset=0&api_key=DEMO_KEY"
      expect(@na.get_food_url("Cod", 20, 0)).to eq(expected)
    end

    it "builds the correct get food list url" do
      expected ="http://api.nal.usda.gov/ndb/list?format=json&lt=f&sort=n&max=100&offset=0&api_key=DEMO_KEY"
      expect(@na.get_food_list_url("f", "n", 100, 0)).to eq(expected)
    end

    it "builds the correct get food report url" do
      expected ="http://api.nal.usda.gov/ndb/reports/?ndbno=01009&type=b&format=json&api_key=DEMO_KEY"
      expect(@na.get_food_report_url('01009', 'b')).to eq(expected)
    end

    it "builds the correct nutrient's report url" do
      expected="http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key=DEMO_KEY&nutrients=205&nutrients=204&nutrients=208&nutrients=269"
      expect(@na.get_nutrient_report_all_url(["205", "204", "208", "269"])).to eq(expected)
    end

    it "builds the correct nutrient report food group" do
      expected ="http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key=DEMO_KEY&nutrients=205&nutrients=204&nutrients=208&nutrients=269&fg=0100&fg=0500"
      expect(@na.get_nutrient_report_food_group_url(["205", "204", "208", "269"], ["0100", "0500"])).to eq(expected)
    end

    it "builds the correct nutrient report for food url" do
      expected="http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key=DEMO_KEY&nutrients=205&nutrients=204&nutrients=208&nutrients=269&ndbno=01009"
      expect(@na.get_nutrient_report_for_food_url("01009", ["205", "204", "208", "269"])).to eq(expected)
    end
  end
end

