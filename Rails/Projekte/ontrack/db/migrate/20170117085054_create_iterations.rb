class CreateIterations < ActiveRecord::Migration[5.0]
  def change
    create_table :iterations do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :project_id

      t.timestamps
    end
  end
end
