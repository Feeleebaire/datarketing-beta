class Ad < ApplicationRecord
  belongs_to :publisher
  has_many :pannels
  has_many :prints
  has_many :radios
  has_many :televisions
  has_many :transports
  has_many :ad_bookings
end
