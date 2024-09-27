class AddcolumnToappointments < ActiveRecord::Migration[7.2]
  def change 
    add_column :appointments,:doctor_id,:integer
    add_column :appointments, :patient_id, :integer

  end
end
