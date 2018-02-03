class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.boolean :state
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
