class RoomPolicy
  attr_reader :current_user, :room

  def initialize(current_user, room)
    @current_user = current_user
    @room = room
  end

  def create?
    @current_user.admin?
  end

  def edit?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    @current_user.admin?
  end
end
