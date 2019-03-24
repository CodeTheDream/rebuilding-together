# frozen_string_literal: true

class VolunteersController < ApplicationController
    
before_action :authenticate_user!

  def index
    # set permission that only the administrator can see the index
    # also set up function/action either here or in devise that when the user
        # first sign up for login credentials they're redirected to a creat your
        # profile page. 
  # @repair = Repair.all
    @volunteer = Volunteer.all
  end

  def new
  # @repair = Repair.all
    @volunteer = Volunteer.new
  end
  
  def show
    @volunteer = current_user.volunteer
  end

  def create
    # @repair = Repair.all
    @volunteer = Volunteer.new
    @volunteer.picture = params[:volunteer][:picture]
    @volunteer.first_name = params[:volunteer][:first_name]
    @volunteer.last_name = params[:volunteer][:last_name]
    @volunteer.email = params[:volunteer][:email]
    @volunteer.mobile_phone = params[:volunteer][:mobile_phone]
    @volunteer.birthdate = params[:volunteer][:birthdate]
    @volunteer.gender = params[:volunteer][:gender]
    @volunteer.city = params[:volunteer][:city]
    @volunteer.state = params[:volunteer][:state]
    @volunteer.employer = params[:volunteer][:employer]
    @volunteer.position = params[:volunteer][:position]
    @volunteer.availability = params[:volunteer][:availability]
    @volunteer.skill = params[:volunteer][:skill]
    @volunteer.volunteer_notes = params[:volunteer][:volunteer_notes]
    @volunteer.user_id = current_user.id
    @volunteer.save
    redirect_to volunteer_path(@volunteer)
  end

  def edit
    # @repair = Repair.all
    @volunteer = Volunteer.find(current_user.id)
  end

  def update
    # @repair = Repair.all
    volunteer = Volunteer.find(params[:id])
    volunteer.picture = params[:volunteer][:picture]
    volunteer.first_name = params[:volunteer][:first_name]
    volunteer.last_name = params[:volunteer][:last_name]
    volunteer.email = params[:volunteer][:email]
    volunteer.mobile_phone = params[:volunteer][:mobile_phone]
    volunteer.birthdate = params[:volunteer][:birthdate]
    volunteer.gender = params[:volunteer][:gender]
    volunteer.city = params[:volunteer][:city]
    volunteer.state = params[:volunteer][:state]
    volunteer.employer = params[:volunteer][:employer]
    volunteer.position = params[:volunteer][:position]
    volunteer.availability = params[:volunteer][:availability]
    volunteer.skill = params[:volunteer][:skill]
    volunteer.volunteer_notes = params[:volunteer][:volunteer_notes]
    volunteer.user_id = current_user.id
    volunteer.save
    redirect_to volunteer_path
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
end
