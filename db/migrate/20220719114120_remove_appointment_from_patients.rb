class RemoveAppointmentFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_reference :patients, :appointment
  end
end
