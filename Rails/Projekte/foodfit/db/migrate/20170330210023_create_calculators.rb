class CreateCalculators < ActiveRecord::Migration[5.0]
  def change
    create_table :calculators do |t|
      t.references :Body, foreign_key: true
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
