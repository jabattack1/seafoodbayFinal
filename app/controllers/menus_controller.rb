class MenusController < ApplicationController

  def index
  	
 	@menu = Menu.all

 	@appetizers = []
 	@fried_platters = []

  # @appetizers = @menu.select do |food|
  #   food.course == "Appetizers"
  # end

 	@menu.each do |food|
 		if food.course == "Appetizers"

 			@appetizers.push(food)
 		end
 	end
 	
  @menu.each do |platter|
 		if platter.course == "Fried Platters"
 			@fried_platters.push(platter)
 		end
 	end
 		
 	
  end

  def create
  	menuNew = Menu.create({
        course: params["course"],
        dish_name: params["dish_name"],
        description: params["description"],
        price: params["price"]
      })

  	redirect_to '/menus/new'

  end

  def new
    if session[:user_id]
    
    @admin = Admin.all
  	@menu = Menu.all

 	  @appetizers = []
 	  @fried_platters = []
    @fresh_fishes = []
    @cold_platters = []
    @broiled_platters = []
    @vegetables = []
    @lunch = []
    @specials = []
    @side_order = []
    @alacarte = []

 	@menu.each do |food|
 		 if food.course == "Appetizers"

 			  @appetizers.push(food)
 		 end
 	  end
 	@menu.each do |platter|
 		 if platter.course == "Fried Platters"
 			@fried_platters.push(platter)
 		 end
 	  end

  @menu.each do |food|
      if food.course == "Fresh Fish"

      @fresh_fishes.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "Cold Platters"

      @cold_platters.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "Broiled Platters"

      @broiled_platters.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "Vegetables"

      @vegetables.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "Lunch"

      @lunch.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "Specials"

      @specials.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "Side Order"

      @side_order.push(food)
      end
    end

  @menu.each do |food|
      if food.course == "A La Carte"

      @alacarte.push(food)
      end
    end
    else
      redirect_to '/admins'
    end

  end

  def update
    menu_item = Menu.find(params[:id])

    menu_item.update({
    course: params["course"],
    dish_name: params["dish_name"],
    description: params["description"],
    price: params["price"]
    })

  redirect_to "/menus/new"

  end

  def show
    @menu = Menu.find(params["id"])
  end


  def destroy
    menu_item = Menu.find(params[:id])
    # binding.pry

    menu_item.destroy
    redirect_to "/menus/new"

  end

end