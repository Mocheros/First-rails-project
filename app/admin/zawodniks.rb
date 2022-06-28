ActiveAdmin.register Zawodnik do
  menu label: "Zawodnicy"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :imie, :nazwisko, :id_zespolu, :narodowosc, :rok_urodzenia, :numer, :rozegrane_mecze, :gole, :asysty, :zolte_kartki, :czerwone_kartki
  #
  # or
  #
  # permit_params do
   #  permitted = [:imie, :nazwisko, :id_zespolu, :narodowosc, :rok_urodzenia, :numer]
     #permitted << :other if params[:action] == 'create'
    # permitted << :other if params[:action] == 'destroy'
     #permitted
   #end
  
end
