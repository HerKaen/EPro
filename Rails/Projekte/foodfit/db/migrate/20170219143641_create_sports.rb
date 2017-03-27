class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :menge
      t.string :einheit
      t.integer :kalorien

      t.timestamps
    end
  end
end
