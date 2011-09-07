class User < ActiveRecord::Base
  
  has_many :user_virtues
  
  def self.authenticate(email, password)
    user = self.find_by_email(email)
    if user
      #expected_password = encrypted_password(password, user.salt)
      expected_password = user.password
      if user.password != expected_password
        user = nil
      end
    end
    user
  end
  
end