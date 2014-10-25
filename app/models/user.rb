class User < ActiveRecord::Base

  validatas_presence_of :username, :encrypted_password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_inclusion_of :role, :in => %w[admin user]

  scope :signed_up, order("id DESC")

  def admin?
    role == "admin"
  end

  def remoke_admin
    self.role = "user"
  end

  private
  def make_admin!
    self.role = "admin"
  end
end
