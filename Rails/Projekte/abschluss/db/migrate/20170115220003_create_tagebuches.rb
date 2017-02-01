class CreateTagebuches < ActiveRecord::Migration[5.0]
  def change
    create_table :tagebuches do |t|
      t.string :name
      t.integer :menge
      t.float :eiweiß
      t.float :fett
      t.float :kohlenhydrate
      t.integer :kalorien
      t.integer :anzahl
      t.datetime :datum
      t.integer :lebensmittel_id

      t.timestamps
    end
  end
end
