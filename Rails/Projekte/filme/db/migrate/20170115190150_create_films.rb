class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :author
      t.string :title
      t.text :description
      t.date :published_on

      t.timestamps
    end
  end
end
