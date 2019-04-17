class VolunteerRepairPolicy
  attr_reader :user, :model

  def initialize(user, model)
    @current_user = user
    @volunteer_repair = model
  end

  def add_repair?
    @current_user.admin? || @volunteer_repair.volunteer_id == @current_user.id
  end

  def remove_repair?
    @current_user.admin? || @volunteer_repair.volunteer_id == @current_user.id
  end

end
