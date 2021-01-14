class PlantsController < ApplicationController
  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    @plant.save
    redirect_to garden_path(@garden)
  end

  # DELETE '/plants/:id'
  def destroy
    @plant = Plant.find(params[:id])
    @garden = @plant.garden
    @plant.destroy
    redirect_to garden_path(@garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:image_url, :name)
  end
end
