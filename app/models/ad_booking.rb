class AdBooking < ApplicationRecord
  belongs_to :campaign
  belongs_to :ad
end
