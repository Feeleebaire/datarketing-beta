class Campaign < ApplicationRecord
  #associations
  belongs_to :user
  has_many :ad_bookings
  #validations
  validates :name, presence: true
  validates :budget, presence: true
  validates :start_date, presence: true
end
