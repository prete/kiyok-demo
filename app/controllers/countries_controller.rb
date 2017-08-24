class CountriesController < ApplicationController
    def index
        @countries = Country.all
        @country = Country.new
      end
    
    def new
      @country = Country.new
    end
    
    def show
      @countries = Country.all
      @country = Country.find(params[:id])
    end
  
    def create
        @country = Country.new(country_params)
        @province = Province.new
        
        if @country.save && params[:redirect]=="1"
          redirect_to countries_path
        else
          respond_to do |format|  
            format.js { render 'countries/create_result'}
          end
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
