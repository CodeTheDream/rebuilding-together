class OwnerPolicy
  attr_reader :user, :model

  def initialize(user, model)
    @current_user = user
    @owner = model
  end

  def index?
    @current_user.admin? 
  end

  def show?
    @current_user.admin? || @owner == @current_user.owner
  end

  def edit?
    @current_user.admin? || @owner == @current_user.owner
  end

  def update? #important
    @current_user.admin? || @owner == @current_user.owner
  end

  def new?   #new policy
    @owner.user_id = @current_user.id
  end

  def create?  #create policy
    @owner == @current_user.owner
  end

  def destroy?
    @current_user.admin? || @owner == @current_user.owner
  end

end
