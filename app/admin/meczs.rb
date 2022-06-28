ActiveAdmin.register Mecz do
  menu label: "Mecze"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :id_pierwszego, :id_drugiego, :gole_pierwszego, :gole_drugiego, :termin, :nr_kolejki
  #
  # or
  #
  # permit_params do
  #   permitted = [:id_pierwszego, :id_drugiego, :gole_pierwszego, :gole_drugiego, :termin, :nr_kolejki]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
