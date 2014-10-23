require 'digest/sha1'
class User < ActiveRecord::Base
  has_many :carts
  before_save :encrypt_password
  validates_uniqueness_of :name
  def encrypt_password
    if self.password.present?
      self.password = Digest::SHA1.hexdigest(self.password)
    else
      self.password = self.password_was
    end
  end

  def registered?
    u = User.find_by(name: self.name, password: Digest::SHA1.hexdigest(self.password))
    if u != nil
      self.id = u.id
      true
    else
      false
    end
  end
end
