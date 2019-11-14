class TaxDecimals < ActiveRecord::Migration[6.0]
  def change


    change_column :products, :tax, "numeric USING CAST(price AS numeric)"
    change_column :products, :tax, :decimal, precision: 7, scale: 2

    change_column :products, :total, "numeric USING CAST(price AS numeric)"
    change_column :products, :total, :decimal, precision: 7, scale: 2


  end
end
