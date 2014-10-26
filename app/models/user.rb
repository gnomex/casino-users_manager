class User < ActiveRecord::Base

  before_create :assing_password

  validates_presence_of :username, :encrypted_password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_inclusion_of :role, :in => %w[admin user]

  scope :signed_up, order("id DESC")

  def admin?
    role == "admin"
  end

  def make_admin!
    self.role = "admin"
  end

  def remoke_admin
    self.role = "user"
  end

  private
    def assing_password
    encryption = PasswordEncryptor.encrypt(@encrypted_password)

    self.encrypted_password = encryption[:hash]
  end

  def validate_password?
    new_record? || encrypted_password.present?
  end
end
