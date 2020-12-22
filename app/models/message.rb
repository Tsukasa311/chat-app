class Message < ApplicationRecord
  belongs_to :user
  berongs_to :room
end
