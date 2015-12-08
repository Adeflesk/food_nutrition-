require 'spec_helper'
require 'nutrition_api_adapter'

describe NutritionApiAdapter do

  context "building api urls" do
    before do
     setupparams = instance_double("SetupParams",
                              :api_key =>"api_key=DEMO_KEY",
                              :api_host => "http://api.nal.usda.gov/ndb/",
                              :api_search =>"search/?format=json&q=")
      @na = NutritionApiAdapter.new(setupparams)
    end

    it "builds the correct get food url" do
      expected ="http://api.nal.usda.gov/ndb/search/?format=json&q=Cod&sort=n&max=20&offset=0&api_key=DEMO_KEY"
      expect(@na.get_food_url("Cod",20,0)).to eq(expected)
    end

    it "builds the correct get food list" do
      expected ="http://api.nal.usda.gov/ndb/list?format=json&lt=f&sort=n&max=100&offset=0&api_key=DEMO_KEY"
      expect(@na.get_food_list_url("f","n",100,0)).to eq(expected)
    end
  end
end

