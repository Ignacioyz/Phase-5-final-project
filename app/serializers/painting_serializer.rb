class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :image_url
end
