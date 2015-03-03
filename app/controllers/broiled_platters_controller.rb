class BroiledPlattersController < ApplicationController

  def index
  
  @menu = Menu.all

 	@broiled_platters = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Broiled Platters"

 			@broiled_platters.push(food)
 		end
 	end
 		
 	
  end

end