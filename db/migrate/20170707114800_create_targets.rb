class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.string :sexe
      t.string :age
      t.string :geo
      t.string :tag

      t.timestamps
    end
  end
end
