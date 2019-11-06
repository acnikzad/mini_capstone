class Api::ProductsController < ApplicationController

  def action_dolls
    @message = "BOOOOOYAAA"  
    render "product.json.jb"
  end

  def stuffed_dolls
    @message = Product.all
    render "product.json.jb"
  end


end
