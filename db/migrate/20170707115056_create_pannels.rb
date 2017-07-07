class CreatePannels < ActiveRecord::Migration[5.1]
  def change
    create_table :pannels do |t|
      t.references :ad, foreign_key: true
      t.references :target, foreign_key: true
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end
