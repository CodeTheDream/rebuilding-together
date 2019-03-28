class OwnersController < ApplicationController
  before_action :authenticate_user!

  def index
    @owners = Owner.order(created_at: :desc)
  end

  def new
    @user  = User.new
    @owner = @user.build_owner
  end

  def create
      @user  = User.new
      @owner = @user.build_owner(owner_params)
      # @owner.user_id = current_user.id

      if @owner.save
        flash[:notice] = "Owner created"
        redirect_to @owner
      else
        render 'new'
      end
  end

  def show
    # @owner = current_user.owner
    @owner = Owner.find(params[:id])
  end


  private
    def owner_params
      params.require(:owner).permit(:user_id, :first_name, :middle_name, :last_name,
        :address, :city, :state, :zip, :country, :year, :email, :phone, :em_contact_name,
        :em_contact_phone, :em_contact_relationship, :language, :howd_you_hear)
    end
end
