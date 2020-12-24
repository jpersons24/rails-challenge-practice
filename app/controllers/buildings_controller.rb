class BuildingsController < ApplicationController

   def index
      @buildings = Building.all
   end

   def show
      @building = find_building
   end

   def edit
      @building = find_building
   end

   def update
      @building = find_building
      @building.update(building_params)

      redirect_to building_path(@building)
   end

   private

   def find_building
      Building.find(params[:id])
   end

   def building_params
      params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
   end

end