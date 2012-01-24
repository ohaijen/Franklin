class UserVirtue < ActiveRecord::Base

  belongs_to :user 
  has_many :results
end
