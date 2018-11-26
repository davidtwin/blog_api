class Water < ApplicationRecord
  belongs_to :customer
  has_many :delivery_notes
end
