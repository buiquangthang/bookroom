class EventPolicy
  attr_reader :current_user, :event

  def initialize(current_user, event)
    @current_user = current_user
    @event = event
  end

  def create?
    @current_user.leader?
  end

  def edit?
    @current_user.admin? || ( @current_user == @event.user )
  end

  def update?
    @current_user.admin? || @current_user.leader?
  end

  def destroy?
    @current_user.admin? || ( @current_user == @event.user )
  end
end
