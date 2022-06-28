ActiveAdmin.register Zespol do
  menu label: "Zespoły"

  filter :nazwa
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :nazwa, :stadion
  #
  # or
  #
  # permit_params do
  #   permitted = [:nazwa, :stadion]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
