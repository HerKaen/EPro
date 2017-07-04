class DropSuccess < ActiveRecord::Migration[5.0]
  def change
    drop_table :successes
  end
end