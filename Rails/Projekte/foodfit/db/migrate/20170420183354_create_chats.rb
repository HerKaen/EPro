class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.text :text
      t.string :name
      t.references :User, foreign_key: true
      
      t.timestamps
    end
  end
end
