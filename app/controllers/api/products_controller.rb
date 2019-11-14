class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jb'
  end 

  def show
    the_id = params[:id]
    @product =Product.find_by(id: the_id)

    render "show.json.jb"
  end

  def create
    @product = Product.new(

    name: params[:input_name],
    price: params[:input_price].to_i,
    image_url: params[:input_image_url],
    description: params[:input_description]
    )

    @product.save 

    render "show.json.jb"
  end



  def update
    the_id = params[:id]
    @product = Product.find_by(id: the_id)

    @product.name = params[:name],
    @product.price = params[:price],
    @product.image_url = params[:image_url],
    @product.description = params[:description]
  
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}
    end
  end

  def destroy

    @product = Product.find_by(id: params[:id])

    @product.destroy
    @product.save

    render "destroy.json.jb"
  end





end
