class Manager < ActiveRecord::Base
  include Role

  def self.find_by_email(email)
    user = User.find_by_role_type_and_email("Manager", email)
    user.try(:role)
  end
end
