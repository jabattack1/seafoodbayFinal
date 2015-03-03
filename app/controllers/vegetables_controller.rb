class VegetablesController < ApplicationController

  def index
  
  @menu = Menu.all

 	@vegetables = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Vegetables"

 			@vegetables.push(food)
 		end
 	end
 		
 	
  end

end