class KartkacController < ApplicationController

    def gosp
        @kartka = Kartkac.new
        @mecz= Mecz.find(params[:id])
    end

    def gosc
        @kartka = Kartkac.new
        @mecz= Mecz.find(params[:id])
    end

    def create
        @kartka = Kartkac.new(katrkac_params)
        if @kartka.save
            Zawodnik.find_by_sql("UPDATE zawodniks SET czerwone_kartki = czerwone_kartki + 1 where id = '#{@kartka.id_zawodnika}'")
            redirect_to "/kolejki"
        else
          render :new
        end
    end

    private
        def katrkac_params
            params.require(:kartkac).permit(:id_meczu, :id_zespolu, :id_zawodnika, :minuta)
        end
end
