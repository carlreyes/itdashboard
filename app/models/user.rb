class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_initialize :set_default_role, :if => :new_record?

  enum role: [:tech, :director]

  has_many :work_orders

  def set_default_role
    self.role ||= :tech
  end
end
