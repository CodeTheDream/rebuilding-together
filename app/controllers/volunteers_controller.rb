# frozen_string_literal: true

class VolunteersController < ApplicationController
    
before_action :authenticate_user!

  def index
    # want this to show the volunteers profile information
    @volunteer = Volunteer.all
    # @user = current_user
    # @repair = Repair.all
  end

  def new
    @volunteer = Volunteer.new
    # @repair = Repair.all
  end

  def create
    # @user = current_user
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
    # @volunteer.repair_id = params[:repair_id]
    @volunteer.volunteer_notes = params[:volunteer][:volunteer_notes]
    @volunteer.save
    redirect_to volunteers_path
  end

  def edit
    # @user = current_user
    # @repair = Repair.all
    @volunteer = Volunteer.find(params[:id])
  end

  def update
    # @user = current_user
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
    # @volunteer.repair_id = params[:repair_id]
    volunteer.volunteer_notes = params[:volunteer][:volunteer_notes]
    volunteer.save
    redirect_to volunteers_path
  end

  def show
    # show projects available based on their skills?
    # show past projects they've completed?
    # show current projects and profiles for their team members?
  end

  def add
    # for volunteer to sign up for a project
    # if volunteer signs up, a message or notification gets sent to the administrator
  end

  def remove
    # for volunteer to remove project, perhaps include a note for why they're
    # no longer available?
  end
end
