class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy] # , :edit, :update, :show]

  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'dose was successfully created.'
    else
      render 'cocktails/show'
    end
  end

  # DELETE /doses/1
  def destroy
    @dose.destroy
    redirect_to cocktail_path, notice: 'dose was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dose
    @dose = Dose.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def dose_params
    params.require(:dose).permit(:description)
  end
end
