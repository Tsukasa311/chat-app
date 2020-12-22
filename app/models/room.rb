class Room < ApplicationRecord
  has_many :users, through: :room_users
  has_manu :room_users
end
