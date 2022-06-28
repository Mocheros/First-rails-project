class MeczeController < ApplicationController
  skip_before_action :authorized, only: [:index, :show] 

  def index
    @data = params[:czygra]
  end

  def show
    @mecz = Mecz.find(params[:id])
    @mecze = Mecz.all
    @sklady = Sklad.all
    @bramki = Bramki.find_by_sql("SELECT * FROM bramkis ORDER BY minuta")
    @zawodnik = Zawodnik.all
    @kartkaz = Kartkaz.find_by_sql("SELECT * FROM kartkazs ORDER BY minuta")
    @kartkac = Kartkac.find_by_sql("SELECT * FROM kartkacs ORDER BY minuta")
  end

  def statystyki
    @mecz = Mecz.find(params[:id])
    @sklady = Sklad.all
    @zawodnicy = Zawodnik.all
  end

  def wynik
    @mecz= Mecz.find(params[:id])
  end

  def kartki
    @mecz= Mecz.find(params[:id])
  end

  def edit
    @mecz = Mecz.find(params[:id])
  end

  def update
    @mecz = Mecz.find(params[:id])

    if @mecz.update(mecze_params)
      if @mecz.gole_pierwszego > @mecz.gole_drugiego
        #  Zespol.find_by_sql("UPDATE zespols SET punkty=0,mecze_zespolu=0,gole_strzelone=0,gole_stracone=0,zwyciestwa=0,porazki=0,remisy=0")
        #  Zespol.find_by_sql("UPDATE zespols SET punkty=0,mecze_zespolu=0,gole_strzelone=0,gole_stracone=0,zwyciestwa=0,porazki=0,remisy=0")
        Zespol.find_by_sql("UPDATE zespols SET punkty = punkty + 3 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET mecze_zespolu = mecze_zespolu + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET mecze_zespolu = mecze_zespolu + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET zwyciestwa = zwyciestwa + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET porazki = porazki + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_strzelone = gole_strzelone + '#{@mecz.gole_pierwszego}' WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_strzelone = gole_strzelone + '#{@mecz.gole_drugiego}' WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_stracone = gole_stracone + '#{@mecz.gole_drugiego}' WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_stracone = gole_stracone + '#{@mecz.gole_pierwszego}' WHERE id = '#{@mecz.id_drugiego}'")
      elsif @mecz.gole_pierwszego < @mecz.gole_drugiego
        Zespol.find_by_sql("UPDATE zespols SET punkty = punkty + 3 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET mecze_zespolu = mecze_zespolu + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET mecze_zespolu = mecze_zespolu + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET zwyciestwa = zwyciestwa + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET porazki = porazki + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_strzelone = gole_strzelone + '#{@mecz.gole_pierwszego}' WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_strzelone = gole_strzelone + '#{@mecz.gole_drugiego}' WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_stracone = gole_stracone + '#{@mecz.gole_drugiego}' WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_stracone = gole_stracone + '#{@mecz.gole_pierwszego}' WHERE id = '#{@mecz.id_drugiego}'")
      else
        Zespol.find_by_sql("UPDATE zespols SET punkty = punkty + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET punkty = punkty + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET mecze_zespolu = mecze_zespolu + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET mecze_zespolu = mecze_zespolu + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET remisy = remisy + 1 WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET remisy = remisy + 1 WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_strzelone = gole_strzelone + '#{@mecz.gole_pierwszego}' WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_strzelone = gole_strzelone + '#{@mecz.gole_drugiego}' WHERE id = '#{@mecz.id_drugiego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_stracone = gole_stracone + '#{@mecz.gole_drugiego}' WHERE id = '#{@mecz.id_pierwszego}'")
        Zespol.find_by_sql("UPDATE zespols SET gole_stracone = gole_stracone + '#{@mecz.gole_pierwszego}' WHERE id = '#{@mecz.id_drugiego}'")
      end
      redirect_to "/kolejki"
    else
      render :edit
    end
  end

  def new
    @mecz = Mecz.new
    @zawodnicy = Zawodnik.all
  end

  def create
    @mecz = Mecz.new(mecze_params)
    if @mecz.save
      redirect_to "/kolejki"
    else
      render :new
    end
  end
  
  private
  def mecze_params
    params.require(:mecz).permit(:id_pierwszego, :id_drugiego, :termin, :nr_kolejki, :gole_pierwszego, :gole_drugiego, :czywynik)
  end

end