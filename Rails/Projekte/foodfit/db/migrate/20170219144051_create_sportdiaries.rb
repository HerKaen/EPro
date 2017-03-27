class CreateSportdiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :sportdiaries do |t|
      t.date :datum
      t.integer :anzahl
      t.integer :user_id
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
