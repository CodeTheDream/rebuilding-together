# frozen_string_literal: true

class VolunteerPolicy
  attr_reader :user, :volunteer

  def initialize(user, volunteer)
    @user = user
    @volunteer = volunteer
  end

  def index?
    user.admin?
  end
end
