class Campaign < ApplicationRecord
  #associations
  belongs_to :user
  has_many :ad_bookings
end
