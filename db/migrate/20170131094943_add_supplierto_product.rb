class AddSuppliertoProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :supplier_id, :string
  end
end
