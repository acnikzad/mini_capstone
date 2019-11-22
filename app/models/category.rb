class Category < ApplicationRecord
  has_many :productcategories
  has_many :products, through: :category_products
end
