class StoreController < ApplicationController
  def index
  	if session[:counter].nil?
  		session[:counter]=0
  	else
  		session[:counter]+=1
  	end

  	@products = Product.order(:title)
  end
end
