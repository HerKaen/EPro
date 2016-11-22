class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :rating
      t.decimal :umsatz

      t.timestamps
    end
  end
end
