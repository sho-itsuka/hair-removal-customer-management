class HairRemovalsController < ApplicationController
  def index
    @hair_removal = HairRemoval.new
    @customer = Customer.find(params[:customer_id])
  end

  def new
    @hair_removal = HairRemoval.new
  end

  def create
    @hair_removal = HairRemoval.new
    if @hair_removal.save
      redirect_to customer_hair_removals_path
    else
      render :new
    end
  end

  private
  
  def hair_removal_params
    params.require(:hair_removal).permit(:treatment_id, :part_id, :treatment_date, :treatment_memo, :image).merge(:customer_id)
  end
  
end
