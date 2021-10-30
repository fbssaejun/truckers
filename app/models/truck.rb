class Truck < ApplicationRecord
  validate :name, :company_id, :capacity
end
