class Api::ProductsController < ApplicationController

  def action_dolls

  @message = "BOOOOOYAAA"
  
  render "product.json.jb"
  end

end
