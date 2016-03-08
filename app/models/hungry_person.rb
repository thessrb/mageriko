class HungryPerson < ApplicationRecord
  has_many :orders
  has_many :dishes, through: orders
end
