class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  helper_method :cart

  def add
    @cart = cart
    @cart << params[:product]

    redirect_to '/'
  end
end
