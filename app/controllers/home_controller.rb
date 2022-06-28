class HomeController < ApplicationController
  skip_before_action :authorized
    def index
      @home = Home.all
    end

    def new
      @home = Home.new
    end

    def show
      @home = Home.find(params[:id])
    end

    def edit
      @home = Home.find(params[:id])
    end

    def update
      @home = Home.find(params[:id])
      if @home.update(home_params)
        redirect_to "/kolejki"
      else
        render :edit
      end
    end

    def create
      @home = Home.new(home_params)
      if @home.save
        redirect_to "/home"
      else
        render :new
      end
  end
    private
      def home_params
        params.require(:home).permit(:tytul, :opis, :czydodano)
      end
end
