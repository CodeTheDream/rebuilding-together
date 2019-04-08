# frozen_string_literal: true

class VolunteersController < ApplicationController

before_action :authenticate_user!
after_action  :verify_authorized

  def index
    # set permission that only the administrator can see the index
    # also set up function/action either here or in devise that when the user
    # first sign up for login credentials they're redirected to a creat your
    # profile page.
    # @repair = Repair.all
    @volunteer = Volunteer.all
    authorize Volunteer
  end

  def new
    @volunteer = current_user.build_volunteer
    authorize @volunteer
  end

  def create
    @volunteer = current_user.build_volunteer(volunteer_params)
    authorize @volunteer
    if @volunteer.save
      flash[:success] = "Volunteer created."
      redirect_to volunteer_path(@volunteer)
    else
      render 'new'
    end
  end

  def show
    @volunteer = current_user.volunteer unless current_user.admin?
    @volunteer = Volunteer.find(params[:id])
    authorize @volunteer
  end

  def edit
    @volunteer = current_user.volunteer unless current_user.admin?
    @volunteer = Volunteer.find(params[:id])
    authorize @volunteer
  end

  def update
    @volunteer = current_user.volunteer unless current_user.admin?
    @volunteer = Volunteer.find(params[:id])
    authorize @volunteer

    if @volunteer.update_attributes(volunteer_params)
      flash[:success] = "Volunteer updated."
      redirect_to volunteer_path(@volunteer)
    else
      render 'edit'
    end
  end

  def destroy
    @volunteer = Volunteer.find(params[:id])
    authorize @volunteer
    @volunteer.destroy
    flash[:success] = "Volunteer deleted."
    redirect_to volunteers_path
  end

  # def (action to view projects)
  #   # show projects available based on their skills?
  #   # show past projects they've completed?
  #   # show current projects and profiles for their team members?
  # end

  def add
    # for volunteer to sign up for a project
    # if volunteer signs up, a message or notification gets sent to the administrator
  end

  def remove
    # for volunteer to remove project, perhaps include a note for why they're
    # no longer available?
  end

  def add_repairs
    @repair = Repair.all
    if current_user.nil?
      redirect_to new_volunteers_path
    else
      @volunteer = current_user.volunteer
  end
  end

  def add_repair_to_volunteer
    # @repair = Repair.find(params[:id])
    volunteer_repair = VolunteerRepair.new
    if current_user.volunteer.nil?
      redirect_to new_volunteer_path
    else
      volunteer_repair.volunteer_id = current_user.volunteer.id
      volunteer_repair.repair_id = params[:id]
      volunteer_repair.status = 'Pending'
      volunteer_repair.save
      redirect_to add_repairs_volunteers_path
   end
  end

  def remove_repair
    @volunteer_repair = VolunteerRepair.find(params[:id])
    @volunteer_repair.volunteer_id = current_user.volunteer.id
    @volunteer_repair.destroy
    redirect_to add_repairs_volunteers_path
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:picture, :first_name, :last_name, :email,
                                      :mobile_phone, :birthdate, :gender, :city, :state, :employer, :position,
                                      :availability, :skill, :volunteer_notes)
  end
end
