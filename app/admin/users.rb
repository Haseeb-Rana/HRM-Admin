ActiveAdmin.register User do

  permit_params :first_name, :last_name, :company, :email, :is_active, :created_by_id

  index download_links: false  do |company|
    column :first_name
    column :last_name
    column :company
    column :email
    column :is_active, label: "Active"
    column :created_by_id
    actions
  end

end
