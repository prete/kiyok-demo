class ProvincesController < ApplicationController
    def index
      @countries = Country.all
      @provinces = Province.all
      @province = Province.new
    end
    
    def new
      @province = Province.new
    end
    
    def show
      @province = Province.find(params[:id])
      @country = Country.find(@province.country_id)
    end

    def create
      @countries = Country.all
      @province = Province.new(province_params)
  
      if @province.save
        redirect_to @province
      end
  end

    def destroy
      @country = Country.find(params[:country_id])
      @province = @country.provinces.find(params[:id])
      @province.destroy
      redirect_to country_path(@country)
    end

    private
    def province_params
        params.require(:province).permit(:name)
    end

end
