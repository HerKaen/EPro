class CreateFooddiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :fooddiaries do |t|
      t.integer :anzahl
      t.date :datum
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
