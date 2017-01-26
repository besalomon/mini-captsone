class ChangePriceDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :decimal, precision: 10, scale: 3
  end
end
