class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :visit_date, :null => false
      t.references :pet, index: true, :null => false
      t.references :customer, index: true, :null => false
      t.boolean :reminder
      t.text :reason

      t.timestamps
    end
  end
end
