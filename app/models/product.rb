class Product < ApplicationRecord

    # validates :price, numericality: {less_than_or_equal_to: 100, greater_than_or_equal_to: 1}
    # validates :name, uniqueness: true
    # validates :description, length: {minimum: 10}

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    if price > 10
      return false
    else
      return true
    end
  end 

  def tax
    tax_rate = 0.09
    tax = price * tax_rate
  end

  def total
    total = price + tax
  end

end
