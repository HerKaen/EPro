class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :author_id
      t.string :title
      t.integer :year
      t.text :description
      t.references :author, foreign_key: true
      t.integer :user_id
      t.timestamps
    end
  end
end
