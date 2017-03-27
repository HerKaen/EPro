class CreateBodies < ActiveRecord::Migration[5.0]
  def change
    create_table :bodies do |t|
      t.date :datum
      t.integer :weigth
      t.integer :user_id

      t.timestamps
    end
  end
end
