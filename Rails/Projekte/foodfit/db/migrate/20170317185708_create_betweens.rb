class CreateBetweens < ActiveRecord::Migration[5.0]
  def change
    create_table :betweens do |t|
      t.references :body, foreign_key: true
      t.references :success, foreign_key: true

      t.timestamps
    end
  end
end
