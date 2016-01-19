class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :visit_date
      t.references :pet, index: true
      t.references :customer, index: true
      t.boolean :reminder
      t.text :reason

      t.timestamps
    end
  end
end
