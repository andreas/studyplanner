class User < ActiveRecord::Base
  has_one :studyplan, :dependent => :destroy
  
  validates_presence_of :email,
                        :salt,
                        :password,
                        :hashed_password
  
  validates_uniqueness_of :email
  validates_format_of 	  :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  
  validates_length_of :password,
                      :minimum => 5,
                      :message => "should be at least 5 characters long"
  
  def self.authenticate(email, password)
    user = self.find_by_email(email)
    if user.blank? || Digest::SHA256.hexdigest(password + user.salt) != user.hashed_password
      user = nil
    end
    user
  end
  
  def password=(pwd)
    @password = pwd
    self.salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp
    self.hashed_password = Digest::SHA256.hexdigest(pwd + salt)
  end
  
  def password
    @password
  end
end