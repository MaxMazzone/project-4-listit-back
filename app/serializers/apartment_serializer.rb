class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :address, :rent, :bedrooms, :bathrooms, :description, :pets_allowed
end
