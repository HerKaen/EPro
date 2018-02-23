class CreateLendings < ActiveRecord::Migration[5.0]
  def change
    create_table :lendings do |t|
      t.date :lending_date
      t.date :return_date
      t.references :book
      t.references :user

      t.timestamps
    end
  end
end
