class Order < ApplicationRecord
  belongs_to :hungry_person
  belongs_to :dish
end
