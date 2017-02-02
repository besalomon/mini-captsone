class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  def tax
    tax = (price * 9)/100
  end
end
