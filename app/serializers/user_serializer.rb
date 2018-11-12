class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :display_name, :password, :email

  has_many :favorites
  has_many :media_types, through: :favorites
end
