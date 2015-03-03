class SideOrdersController < ApplicationController

  def index
  
  @menu = Menu.all

 	@side_orders = []
 

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Side Order"

 			@side_orders.push(food)
 		end
 	end
 		
 	
  end

end