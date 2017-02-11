class Product < ApplicationRecord
  has_many :orders, through: :carted_products
  belongs_to :supplier
  has_many :orders
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, presence: true
  validates :price, numericality:{greater_than: 0}
  validates :supplier_id, numericality: true

  def subtotal
    return quantity * price
  end
end
