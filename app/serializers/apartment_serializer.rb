class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :address, :rent, :bedrooms, :bathrooms, :description, :pets_allowed, :editable

  def editable
    scope == object.user
  end
end
