class OrdersController < ApplicationController

  def new
    @product = Product.find params[:product]
  end

  def create
  end

end
