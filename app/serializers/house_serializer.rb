class HouseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :address
end
