class SpecialsController < ApplicationController

  def index
  
  @menu = Menu.all

 	@specials = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Specials"

 			@specials.push(food)
 		end
 	end
 		
 	
  end

end