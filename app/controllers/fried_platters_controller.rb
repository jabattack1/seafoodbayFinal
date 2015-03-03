class FriedPlattersController < ApplicationController

   def index
  
  @menu = Menu.all

 	@fried_platters = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Fried Platters"

 			@fried_platters.push(food)
 		end
 	end
 		
 	
  end

end