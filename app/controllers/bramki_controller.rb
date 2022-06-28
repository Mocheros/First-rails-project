class BramkiController < ApplicationController

    def index
        @bramki = Bramki.all
    end

    def gosp
        @bramki = Bramki.new
        @zawodnicy = Zawodnik.all
        @mecz = Mecz.find(params[:id])
    end

    def gosc
        @bramki = Bramki.new
        @zawodnicy = Zawodnik.all
        @mecz = Mecz.find(params[:id])
    end

    def create
        @bramki = Bramki.new(bramki_params)
        if @bramki.save
            Zawodnik.find_by_sql("UPDATE zawodniks SET gole = gole + 1 WHERE id = '#{@bramki.id_strzelca}'")
            Zawodnik.find_by_sql("UPDATE zawodniks SET asysty = asysty + 1 WHERE id = '#{@bramki.id_asystenta }'")
            Mecz.find_by_sql("UPDATE meczs SET gole_pierwszego = gole_pierwszego + 1 WHERE id = '#{@bramki.id_meczu}' AND id_pierwszego = '#{@bramki.id_zespolu}'")
            Mecz.find_by_sql("UPDATE meczs SET gole_drugiego = gole_drugiego + 1 WHERE id = '#{@bramki.id_meczu}' AND id_drugiego = '#{@bramki.id_zespolu}'")
            redirect_to "/kolejki"
        else
          render :new
        end
    end
    
    private
        def bramki_params
            params.require(:bramki).permit(:id_meczu, :id_zespolu, :id_strzelca, :id_asystenta, :minuta)
        end
end
