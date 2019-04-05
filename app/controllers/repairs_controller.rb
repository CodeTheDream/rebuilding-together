# frozen_string_literal: true

# rails controller for repairs
class RepairsController < ApplicationController
  before_action :authenticate_user!
  def index
    @repair = Repair.all
  end

  def new
    @repair = Repair.new
  end

  def create
    @repair = Repair.new(repair_params)
    if current_user.nil?
      redirect_to new_owner_path
    else
      @repair.owner_id = current_user.owner.id
      @repair.save
      redirect_to repairs_path
  end
end

  def edit
    @repair = Repair.find(params[:id])
  end

  def update
    @repair = Repair.find(params[:id])
    @repair.update_attributes(repair_params)
    @repair.save
    redirect_to repairs_path
  end

  def destroy
    @repair = Repair.find(params[:id])
    @repair.destroy
    redirect_to repairs_path
  end
end

private

def repair_params
  params.require(:repair).permit(:repair_type, :repair_notes)
end
