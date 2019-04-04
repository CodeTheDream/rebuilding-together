# frozen_string_literal: true

# rails controller for repairs
class RepairsController < ApplicationController
  before_action :authenticate_user!
  def index
    @repairs = Repair.all
  end

  def new
    @repairs = Repair.new
  end

  def create
    @repairs = Repair.new(repair_params)
    @repairs.owner_id = current_user.owner.id
    @repairs.save
    redirect_to repairs_path
  end

  def edit
    @repairs = Repair.find(params[:id])
    
  end

  def update
    @repairs = Repair.find(params[:id])
    @repairs.owner_id = current_user.owner.id
    @repairs.update_attributes(repair_params)
    @repairs.save
    redirect_to repairs_path
  end

  def destroy
    @repairs = Repair.find(params[:id])
    @repairs.destroy
    redirect_to repairs_path
  end
end

private

def repair_params
  params.require(:repair).permit(:repair_type, :repair_notes)
end
