class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  def index
  	@products = Product.order(:title)
  	if session[:counter].nil?
	    session[:counter] = 1
	    @counter = session[:counter]
	else
	    session[:counter] = session[:counter] + 1
	    @counter = session[:counter]
	end
  end
end
