class User < ActiveRecord::Base
  
  validates_uniqueness_of :email
  has_many :user_virtues
  has_many :results, :through => :user_virtues
  
  def self.authenticate(email, password)
    user = self.find_by_email(email)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.password != expected_password
        user = nil
      end
    end
    user
  end

  def self.encrypted_password(password, salt)
    Digest::SHA1.hexdigest(password + salt)
  end

  
end
