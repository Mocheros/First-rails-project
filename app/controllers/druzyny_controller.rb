class DruzynyController < ApplicationController

  skip_before_action :authorized, only: [:index, :show] 
  
  def index
    @druzyny = Zespol.find_by_sql("SELECT * FROM zespols ORDER BY nazwa ASC")
  end

  def new
    @druzyna = Zespol.new
  end

  def show
    @druzyna = Zespol.find(params[:id])
    @zawodnicy = Zawodnik.where(id_zespolu: @druzyna.id)
  end

  def create
    @druzyna = Zespol.new(druzyna_params)
    if @druzyna.save
      redirect_to "/druzyny"
    else
      render :new
    end
  end

  def destroy
    @druzyna = Zespol.find(params[:id])
    @druzyna.destroy
    redirect_to "/druzyny"
  end

  def update
    @druzyna = Zespol.find(params[:id])  
    if @druzyna.update(druzyna_params)
      redirect_to "/druzyny"
    else
      render :edit
    end
  end

  def edit
    @druzyna = Zespol.find(params[:id])
  end

  private
    def druzyna_params
      params.require(:zespol).permit(:nazwa, :stadion, :mecze_zespolu, :zwyciestwa, :remisy, :porazki, :gole_strzelone, :gole_stracone, :punkty)
    end

end