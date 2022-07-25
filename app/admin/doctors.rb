ActiveAdmin.register Doctor do
  permit_params :first_name, :last_name, :phone, :email, :encrypted_password, :category_id
end