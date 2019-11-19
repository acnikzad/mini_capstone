class AddingAndRemovingImageColumns < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :image_url, :string
    add_column :products, :image_id, :string
    add_column :images, :product_id, :string 

  end
end
