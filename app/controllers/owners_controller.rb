class OwnersController < ApplicationController
  before_action :authenticate_user!

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
        flash[:notice] = "Owner created"
        redirect_to @owner
      else
        render 'new'
      end
  end

  def show
    @owner = current_user.owner
    # @owner = Owner.find(params[:id])
  end


  private
    def owner_params
      params.require(:owner).permit(:user_id, :first_name, :middle_name, :last_name,
        :address, :city, :state, :zip, :country, :year, :email, :phone, :em_contact_name,
        :em_contact_phone, :em_contact_relationship, :language, :howd_you_hear)
    end
end
