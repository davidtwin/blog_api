class Customer < ApplicationRecord
	has_many :delivery_notes
	has_many :waters
end
