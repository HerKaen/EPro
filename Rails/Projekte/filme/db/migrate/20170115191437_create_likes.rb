class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :quality
      t.integer :film_id
      t.timestamps
    end
  end
end
