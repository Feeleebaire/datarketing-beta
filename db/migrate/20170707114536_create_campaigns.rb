class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :budget
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
