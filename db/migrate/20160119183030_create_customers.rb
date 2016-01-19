class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, :null => false
      t.string :phone, :limit => 10
      t.string :email

      t.timestamps
    end
  end
end
