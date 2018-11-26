class WaterSerializer < ActiveModel::Serializer
  attributes :id, :address
  has_one :customer
end
