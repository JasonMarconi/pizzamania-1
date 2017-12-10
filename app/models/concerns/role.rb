require 'active_support/concern'

module Role
  extend ActiveSupport::Concern

  included do
    attr_accessor :email, :password, :password_confirmation

    has_one :user, as: :role, dependent: :destroy

    accepts_nested_attributes_for :user

    delegate :email, to: :user, allow_nil: true

    validate :user_presence
    before_validation :create_user
  end

  def user_presence
    unless user.try(:persisted?)
      errors.add(:base, "must have one user.")
    end
  end

  def create_user
    user = self.user || self.build_user
    user.email = @email
    user.password = @password
    user.password_confirmation = @password_confirmation
    user.save

    if user.errors.get(:email)
      self.errors.add(:base, "this email is already taken")
    end
  end
end
