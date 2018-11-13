class MediaTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :format, :img

  has_many :favorites
  has_many :users, through: :favorites
end
