class KolejkiController < ApplicationController
  skip_before_action :authorized

  def index
    @kolejki = Kolejka.find_by_sql("SELECT * FROM kolejkas ORDER BY nr")
    @mecze = Mecz.find_by_sql("SELECT * FROM meczs ORDER BY termin, godzina")
    @skladgosp = params[:gosp]
    @koniec_wprowadzania = params[:check1]
  end

  def new
    @kolejki = Kolejka.new
  end

  def create
    @kolejki = Kolejka.new(kolejka_params)
    if @kolejki.save
        redirect_to "/kolejki"
    else
        render :new
    end
  end

  def destroy
    @kolejka = Kolejka.find(params[:id])
    @kolejka.destroy
    redirect_to "/kolejki"
  end

  private
  def kolejka_params
    params.require(:kolejka).permit(:data_rozpoczecia, :data_zakonczenia, :nr)
  end
end