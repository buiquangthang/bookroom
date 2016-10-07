class SchedulePolicy
  attr_reader :current_user, :schedule

  def initialize(current_user, schedule)
    @current_user = current_user
    @schedule = schedule
  end

  def create?
    @current_user.teacher?
  end

  def edit?
    @current_user.admin? || ( @current_user == @schedule.user )
  end

  def update?
    @current_user.admin? || @current_user.teacher?
  end

  def destroy?
    @current_user.admin? || ( @current_user == @schedule.user )
  end
end
