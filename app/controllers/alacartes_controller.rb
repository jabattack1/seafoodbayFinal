class AlacartesController < ApplicationController

  def index
  
  @menu = Menu.all

 	@alacarte = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "A La Carte"

 			@alacarte.push(food)
 		end
 	end
 		
 	
  end

end