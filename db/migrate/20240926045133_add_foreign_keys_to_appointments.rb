class AddForeignKeysToAppointments < ActiveRecord::Migration[7.2]
  def change
    add_reference :appointments, :patient, null: false, foreign_key: true
  end
end
