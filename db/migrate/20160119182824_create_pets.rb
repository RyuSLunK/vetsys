class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, :null => false, :limit => 35
      t.string :type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.datetime :previous_visit

      t.timestamps
    end
  end
end
