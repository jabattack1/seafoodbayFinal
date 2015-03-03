class ColdPlattersController < ApplicationController

  def index
  
  @menu = Menu.all

 	@cold_platters = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Cold Platters"

 			@cold_platters.push(food)
 		end
 	end
 		
 	
  end

end