class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role, polymorphic: true

  validates_presence_of :email
  validates_uniqueness_of :email

  def is_manager?
    role.is_a?(Manager)
  end

  def is_baker?
    role.is_a?(Baker)
  end

  def is_cashier?
    role.is_a?(Cashier)
  end
end
