ActiveAdmin.register Company do

  permit_params :name, :owner, :logo, :is_active

  index download_links: false  do |company|
    column :name
    column :owner
    column :is_active, label: "Active"
    actions
  end

end
