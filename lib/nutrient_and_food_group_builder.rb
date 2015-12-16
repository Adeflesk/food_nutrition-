class NutrientAndFoodGroupBuilder

  def api_nutrients_list_builder(nutrients)
    pretext = "&nutrients="
    finish = nutrients.map { |n| pretext + n }.join(',')
    return finish.gsub(/[\s,]/, "")
  end

  def api_food_group_list_builder(food_group)
    pretext = "&fg="
    food_group_list = food_group.map { |fg| pretext + fg }.join(',')
    return food_group_list.gsub(/[\s,]/, "")
  end

end


