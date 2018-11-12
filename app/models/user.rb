class User < ApplicationRecord
  has_many :favorites
  has_many :media_types, through: :favorites
end
