class MediaTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :format, :genre, :bio, :img

  has_many :favorites
  has_many :users, through: :favorites
end
