class LunchesController < ApplicationController

  def index
  
  @menu = Menu.all

 	@lunch = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Lunch"

 			@lunch.push(food)
 		end
 	end
 		
 	
  end

end