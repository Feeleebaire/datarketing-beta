class CreateAds < ActiveRecord::Migration[5.1]
  def change
    create_table :ads do |t|
      t.references :publisher, foreign_key: true
      t.string :ad_type

      t.timestamps
    end
  end
end
