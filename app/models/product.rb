class Product < ApplicationRecord
  def tax
    tax = (price * 9)/100
  end
end
