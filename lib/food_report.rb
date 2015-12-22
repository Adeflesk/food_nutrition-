

class FoodReport
 def initialize(food_report)
   @food_report = food_report["report"]
 end

 def report_type
    @food_report["type"]
 end

 def ndbno_number
   @food_report["food"]["ndbno"]
 end

 def food_name
   @food_report["food"]["name"]
 end

 def food_group
   @food_report["food"]["fg"]
 end

 def nutrients
  @food_report["food"]["nutrients"]
 end

 def get_nutrient_values(nutrient)
   n_hash = nutrients.find {|i| i["name"] == nutrient}
   if n_hash.nil?
     "Can't find nutrient"
   else
   "#{n_hash["name"]}  #{n_hash["value"]} #{n_hash["unit"]}"
   end
 end

end
