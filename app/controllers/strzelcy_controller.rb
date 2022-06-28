class StrzelcyController < ApplicationController
  skip_before_action :authorized
  def index
    @chlop = Zawodnik.find_by_sql("SELECT * FROM zespols INNER JOIN zawodniks ON zespols.id = zawodniks.id_zespolu WHERE zawodniks.gole > 0 ORDER BY gole DESC")
  end


end
