class KartkazController < ApplicationController

    def gosp
        @kartka = Kartkaz.new
        @mecz= Mecz.find(params[:id])
    end

    def gosc
        @kartka = Kartkaz.new
        @mecz= Mecz.find(params[:id])
    end

    def create
        @kartka = Kartkaz.new(katrkaz_params)
        if @kartka.save
            Zawodnik.find_by_sql("UPDATE zawodniks SET zolte_kartki = zolte_kartki + 1 where id = '#{@kartka.id_zawodnika}'")
            redirect_to "/kolejki"
        else
          render :new
        end
    end

    private
        def katrkaz_params
            params.require(:kartkaz).permit(:id_meczu, :id_zespolu, :id_zawodnika, :minuta)
        end

end
