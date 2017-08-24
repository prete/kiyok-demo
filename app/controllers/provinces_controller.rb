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

    def update
      @province = Province.update(params[:id], province_params)
      @country = Country.find(@province.country_id)
    end

    def create
      @countries = Country.all
      @province = Province.new(province_params)
      @province.save
      respond_to do |format|  
        format.js { render 'provinces/create_result'}
      end
    end

    def destroy
      @province = Province.find(params[:id])
      @country = Country.find(@province.country_id)
      @province.destroy
      respond_to do |format|  
        format.js { render 'provinces/destroy_result'}
      end
      #redirect_to provinces_path
    end

    private
    def province_params
        params.require(:province).permit(:name, :country_id)
    end

end
