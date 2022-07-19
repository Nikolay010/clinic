class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :encrypted_password

      t.timestamps
    end
  end
end
