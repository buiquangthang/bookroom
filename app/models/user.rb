class User < ApplicationRecord

  enum role: [:user, :teacher, :admin]
  after_initialize :set_default_role, if: :new_record?
  after_initialize :set_default_course, if: :new_record?
  belongs_to :course

  def set_default_role
    self.role ||= :user
  end

  def set_default_course
    self.course_id = 0
  end

  has_many :schedules
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
