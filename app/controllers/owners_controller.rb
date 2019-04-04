class OwnersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_owner, only: [:show, :edit, :update, :destroy]

  def index
    @owners = Owner.order(created_at: :desc)
  end

  def new
    if current_user.owner == nil
      @owner = current_user.build_owner
    else
      redirect_to owner_path(current_user.owner)
    end
  end

  def create
      @owner = current_user.build_owner(owner_params)
      if @owner.save
        flash[:success] = "Owner created"
        redirect_to @owner
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
    if @owner.update_attributes(owner_params)
      flash[:success] = "Owner updated"
      redirect_to @owner
    else
      render 'edit'
    end
  end

  def destroy
    @owner.destroy
    flash[:success] = "Owner deleted!"
    redirect_to owners_url
  end

  private

    def owner_params
      params.require(:owner).permit(:first_name, :middle_name, :last_name,
        :address, :city, :state, :zip, :country, :year, :email, :phone, :em_contact_name,
        :em_contact_phone, :em_contact_relationship, :language, :howd_you_hear)
    end

    def set_owner
      @owner = current_user.owner
    end
end
