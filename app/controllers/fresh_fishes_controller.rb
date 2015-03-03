class FreshFishesController < ApplicationController

  def index
  
  @menu = Menu.all

 	@fresh_fishes = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Fresh Fish"

 			@fresh_fishes.push(food)
 		end
 	end
 		
 	
  end

end