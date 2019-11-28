class ProductsController < ApplicationController

  def show 
    @product =Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def index
    @products = Product.all
    render 'index.html.erb'
  end 

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )

    @product.save!
    redirect_to "/products/#{@product.id}"
  end

end
