class Api::CartedproductsController < ApplicationController

  def index

    @cartedproducts = Cartedproduct.all
    render 'index.json.jb'

  end

  def create

    @cartedproduct = Cartedproduct.new(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity],
      status: "carted"
    )
    @cartedproduct.save

    render 'show.json.jb'
  end


end
