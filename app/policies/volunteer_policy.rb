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
    @current_user.admin? || @current_user == @volunteer.user
  end

  def edit?
    @current_user.admin? || @current_user == @volunteer.user
  end

  def update?
    @current_user.admin? || @current_user == @volunteer.user
  end

  def new?   #new policy
    @volunteer.user_id = @current_user.id
  end

  def create?  #create policy
    @volunteer.user_id == @current_user.id
  end

  def destroy?
    return false if @current_user == @volunteer
    @current_user.admin?
  end

end
