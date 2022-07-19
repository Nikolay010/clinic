class AddFirstNameToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :first_name, :string
    add_column :patients, :last_name,  :string
    add_column :patients, :phone, :string
    add_reference :patients, :appointment
  end
end
