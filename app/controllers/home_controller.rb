class HomeController < ApplicationController
  def index
  end

  def menu
  	if params[:section]
  		@section = Section.where(name: params[:section]).first
  	end
  	@food_items = FoodItem.filter_by_section(params[:section])
  end

  def contact_us

  end

end
