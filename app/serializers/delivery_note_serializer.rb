class DeliveryNoteSerializer < ActiveModel::Serializer
  attributes :id, :delivery_number
  has_one :water
  has_one :customer
end
