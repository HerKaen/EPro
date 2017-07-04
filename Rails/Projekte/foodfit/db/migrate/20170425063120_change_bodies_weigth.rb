class ChangeBodiesWeigth < ActiveRecord::Migration[5.0]
  def up
  	change_column :bodies, :weigth, :float
  end
 
  def down
  	change_column :bodies, :weigth, :integer
  end
end
