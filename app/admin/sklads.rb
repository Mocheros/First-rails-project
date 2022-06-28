ActiveAdmin.register Sklad do
  menu label: "Składy"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :id_meczu, :id_zespolu, :id_zawodnika, :pozycja
  #
  # or
  #
  # permit_params do
  #   permitted = [:id_meczu, :id_zespolu, :id_zawodnika, :pozycja]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
