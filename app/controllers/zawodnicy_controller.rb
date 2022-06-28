class ZawodnicyController < ApplicationController

  skip_before_action :authorized, only: [:index, :show] 
  
  def index
      #@zawodnicy = Zawodnik.find_by_sql("SELECT * FROM statystyki_zawodniks INNER JOIN zawodniks ON statystyki_zawodniks.id_zawodnika = zawodniks.id INNER JOIN zespols ON zawodniks.id_zespolu = zespols.id ORDER BY gole DESC")
      @zawodnicy = Zawodnik.find_by_sql("SELECT * FROM zespols INNER JOIN zawodniks ON zespols.id = zawodniks.id_zespolu")
  end

  def new
      @zawodnicy = Zawodnik.new
  end

  def create
      @zawodnicy = Zawodnik.new(zawodnicy_params)
      if @zawodnicy.save
        redirect_to "/zawodnicy"
      else
        render :new
      end
  end

  def destroy
    @zawodnik = Zawodnik.find(params[:id])
    @zawodnik.destroy
    redirect_to "/zawodnicy"
  end

  def show
    #@zawodnicy = Zawodnik.where("id LIKE ?", params[:id])
    @zawodnicy = Zawodnik.find(params[:id])
  end

  def edit
    @zawodnicy = Zawodnik.find(params[:id])
  end

  def update
    @zawodnicy = Zawodnik.find(params[:id])

    if @zawodnicy.update(zawodnicy_params)
      redirect_to "/zawodnicy"
    else
      render :edit
    end
  end


  private
    def zawodnicy_params
      params.require(:zawodnik).permit(:imie, :nazwisko, :id_zespolu, :narodowosc, :rok_urodzenia, :numer, :rozegrane_mecze, :gole, :asysty, :zolte_kartki, :czerwone_kartki, :pozycja)
    end

end
