class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def tax
    tax = (price * 9)/100
  end

end
