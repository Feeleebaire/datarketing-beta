class Radio < ApplicationRecord
  belongs_to :ad
  belongs_to :target
  has_one :publisher, through: :ads
end
