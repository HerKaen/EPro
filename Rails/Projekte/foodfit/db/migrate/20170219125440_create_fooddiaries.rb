class CreateFooddiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :fooddiaries do |t|
      t.integer :anzahl
      t.string :name
      t.date :datum
      t.float :eiweiß
      t.float :fett
      t.float :kohlenhydrate
      t.integer :kalorien
      t.integer :user_id
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
