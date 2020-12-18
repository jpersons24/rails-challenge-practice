class CompaniesController < ApplicationController

   def show
      @building = Building.find(params[:id])
   end

   def new
      @building = Building.new
   end

   def create
      @building = Building.create(building_params)

      redirect_to building_path(@building)
   end

   private

   def building_params
      params.require(:building).permit(:name)
   end



end