class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :media_type_id

  belongs_to :user
  belongs_to :media_type
end
