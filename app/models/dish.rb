class Dish < ApplicationRecord
  has_many :orders
  has_many :hungry_people, through :orders
end
