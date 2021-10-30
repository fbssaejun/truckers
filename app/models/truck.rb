class Truck < ApplicationRecord
  validate :name, :company, :capacity
end
