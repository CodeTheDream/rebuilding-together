# frozen_string_literal: true

class OwnersController < ApplicationController
  before_action :authenticate_user!
  after_action  :verify_authorized
  before_action :set_owner, only: %i[show edit update destroy]

  def index
    @owners = Owner.order(created_at: :desc)
    authorize Owner
  end

  def new
    if current_user.owner.nil?
      @owner = current_user.build_owner
    else
      redirect_to owner_path(current_user.owner)
    end
    authorize @owner
  end

  def create
    if current_user.owner.nil?
      @owner = current_user.build_owner(owner_params)
    else
      redirect_to owner_path(current_user.owner)
    end
    authorize @owner
    if @owner.save
      flash[:success] = 'Owner created'
      redirect_to @owner
    else
      render 'new'
    end
  end

  def show
    authorize @owner
  end

  def edit
    authorize @owner
  end

  def update
    authorize @owner
    if @owner.update_attributes(owner_params)
      flash[:success] = 'Owner updated'
      redirect_to @owner
    else
      render 'edit'
    end
  end

  def destroy
    authorize @owner
    @owner.destroy
    flash[:success] = 'Owner deleted!'
    redirect_to root_path
  end

  private

  def owner_params
    params.require(:owner).permit(:first_name, :middle_name, :last_name,
                                  :address, :city, :state, :zip, :country, :year, :email, :phone, :em_contact_name,
                                  :em_contact_phone, :em_contact_relationship, :language, :howd_you_hear)
  end

  def set_owner
    if current_user.admin?
      @owner = Owner.find(params[:id])
    else
      @owner = current_user.owner
    end
  end
end
