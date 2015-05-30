class AddSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :currency, :price, :location, :supply, 
             :views, :created_at

  has_one :add_fieldable, root: :additional_fields
end
