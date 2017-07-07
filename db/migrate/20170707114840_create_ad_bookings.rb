class CreateAdBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :ad_bookings do |t|
      t.references :campaign, foreign_key: true
      t.references :ad, foreign_key: true

      t.timestamps
    end
  end
end
