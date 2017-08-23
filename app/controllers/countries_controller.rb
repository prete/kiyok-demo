class CountriesController < ApplicationController
    def index
        @countries = Country.all
        @country = Country.new
      end
    
    def new
      @country = Country.new
    end
    
    def show
      @country = Country.find(params[:id])
    end
  
    def create
        @country = Country.new(country_params)
    
        if @country.save
          redirect_to @country
        else
          render "_form"
        end
    end
  
    def edit
      @country = Country.find(params[:id])
    end
  
    def update
      @country = Country.update(params[:id], country_params)
    end
    
    def destroy
      @country = Country.find(params[:id])
      @country.destroy
  
      redirect_to countries_path
    end

    private
      def country_params
          params.require(:country).permit(:name)
      end
    
end
