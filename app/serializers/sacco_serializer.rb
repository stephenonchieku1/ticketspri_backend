class SaccoSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :vehicles

end
