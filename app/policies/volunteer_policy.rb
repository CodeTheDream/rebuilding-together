# frozen_string_literal: true

class VolunteerPolicy
  attr_reader :user, :model

  def initialize(user, model)
    @current_user = user
    @volunteer = model
  end

  def index?
    @current_user.admin?
  end

  def show?
    @current_user.admin? || @volunteer == @current_user.volunteer
  end

  def edit?
    @current_user.admin? || @volunteer == @current_user.volunteer
  end

  def update? #important
    @current_user.admin? || @volunteer == @current_user.volunteer
  end

  def new?   #new policy
    @volunteer = @current_user.volunteer
  end

  def create?  #create policy
    @volunteer == @current_user.volunteer
  end

  def destroy?
    @current_user.admin? || @volunteer == @current_user.volunteer
  end

  def added_repairs?
    @current_user.admin? || @volunteer == @current_user.volunteer
  end

end
