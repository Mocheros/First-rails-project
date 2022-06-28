class SkladyController < ApplicationController

  helper_method :gospp
    def index
    end

    def gospodarze
      @sklady = Sklad.new
      @zawodnicy = Zawodnik.all
      @mecz = Mecz.find(params[:id])
    end

    def goscie
      @sklady = Sklad.new
      @zawodnicy = Zawodnik.all
      @mecz = Mecz.find(params[:id])
    end

    def wynik
      @mecz= Mecz.find(params[:id])
    end

    def edit
      @mecz = Mecz.find(params[:id])
    end
  
    def update
      @mecz = Mecz.find(params[:id])
  
      if @mecz.update(mecz_params)
        redirect_to "/kolejki"
      else
        render :edit
      end
    end

    def new
      @sklady = Sklad.new
      @zawodnicy = Zawodnik.all
      @mecz = Mecz.find(params[:id])
    end

    def create
        @sklady = Sklad.new(sklad_params)
        if @sklady.save
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik1naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik2naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik3naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik4naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik5naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik6naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik7naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik8naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik9naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik10naz}'")
          Zawodnik.find_by_sql("UPDATE zawodniks SET rozegrane_mecze = rozegrane_mecze + 1 WHERE nazwisko = '#{@sklady.zawodnik11naz}'")     
          redirect_to "/kolejki"
        else
          render :new
        end
    end

    private
    def sklad_params
      params.require(:sklady).permit(:id_meczu, :id_zespolu, :zawodnik1naz, :zawodnik2naz, :zawodnik3naz, 
        :zawodnik4naz, :zawodnik5naz, :zawodnik6naz, :zawodnik7naz, :zawodnik8naz, :zawodnik9naz, :zawodnik10naz, :zawodnik11naz ,:czysklad1, :czysklad2)
    end

    private
    def mecz_params
      params.require(:mecz).permit(:id_pierwszego, :id_drugiego, :termin, :nr_kolejki, :gole_pierwszego, :gole_drugiego)
    end

end
