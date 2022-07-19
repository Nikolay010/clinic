class AddAppointmentToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :appointment, null: false, foreign_key: true
  end
end
