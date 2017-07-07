class Target < ApplicationRecord
  has_many :pannels
  has_many :prints
  has_many :televisions
  has_many :radios
  has_many :transports
end
