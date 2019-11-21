class Api::ProductsController < ApplicationController
  before_action :authenticate_admin

  def index
    @products = Product.all  #where("price < ?", "#{params[:search]}")
    render 'index.json.jb'
  end 

  def show
    the_id = params[:id]
    @product =Product.find_by(id: the_id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(

    name: params[:name],
    price: params[:price].to_i,
    image_id: params[:image_id],
    description: params[:description],
    supplier_id: params[:supplier_id],
    )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end



  def update
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_id = params[:image_id] || @product.image_id
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
  
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy

    @product = Product.find_by(id: params[:id])

    @product.destroy
    @product.save

    render "destroy.json.jb"
  end
end
