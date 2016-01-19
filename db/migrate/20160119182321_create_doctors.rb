class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name, :limit => 35, :null => false
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :school
      t.integer :years

      t.timestamps
    end
  end
end
