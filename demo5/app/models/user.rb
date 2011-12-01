class User < ActiveRecord::Base
  has_many :authorizations
  has_many :roles, :through => :authorizations
  
  def assign_role(role, assigned_by, valid_until)
    auth = Authorization.new(:role_id => role.id, :user_id => self.id)
    auth.assigned_by = assigned_by
    auth.valid_until = valid_until
    unless(Authorization.find_by_user_id_and_role_id(self.id, role.id))
      auth.save
    end

  end
end
