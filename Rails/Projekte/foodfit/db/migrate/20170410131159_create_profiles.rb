class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.references :calculator, foreign_key: true
      t.references :food, foreign_key: true
      t.references :fooddiary, foreign_key: true
      t.references :sport, foreign_key: true
      t.references :sportdiary, foreign_key: true

      t.timestamps
    end
  end
end
