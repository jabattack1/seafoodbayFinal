class AppetizersController < ApplicationController

  def index
  
  @menu = Menu.all

 	@appetizers = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Appetizers"

 			@appetizers.push(food)
 		end
 	end
 		
 	
  end

end
