ActiveAdmin.register Kolejka do
  menu label: "Kolejki"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :data_rozpoczecia, :data_zakonczenia
  #
  # or
  #
  # permit_params do
  #   permitted = [:data_rozpoczecia, :data_zakonczenia]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
