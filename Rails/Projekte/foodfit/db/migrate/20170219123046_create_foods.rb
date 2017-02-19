class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :menge
      t.string :einheit
      t.float :eiweiß
      t.float :fett
      t.float :kohlenhydrate
      t.integer :kalorien

      t.timestamps
    end
  end
end
