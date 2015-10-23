class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wikis
  after_initialize :defaults

  def defaults
    self.role ||= 'member'
  end

  def member?
    role == "member"
  end

  def admin?
    role == "admin"
  end
end
