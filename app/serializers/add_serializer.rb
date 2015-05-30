class AddSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :currency, :price, :location

  has_one :add_fieldable, root: :additional_fields
end
