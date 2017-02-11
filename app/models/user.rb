class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :name, presence: true
  validates :password, length: {in: 6..12 }
  validates :password_confirmation, length: {in: 6..12 }  
end