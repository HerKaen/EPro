class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :password_digest
      t.integer :age
      t.integer :start_weight
      t.integer :dream_weight
      t.integer :height
      t.boolean :admin

      t.timestamps
    end
  end
end
