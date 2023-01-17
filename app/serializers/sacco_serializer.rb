class SaccoSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image_url
  has_many :vehicles
end
