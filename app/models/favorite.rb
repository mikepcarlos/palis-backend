class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :media_type
end
