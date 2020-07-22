class User < ActiveRecord::Base
  has_many :tweets
  
  validates :username, presence: true
  validates :email, presence: true 
  has_secure_password
  
  def slug 
    self.username.downcase.split(" ").join("-")
  end 
  
  def self.find_by_slug(slug)
    self.all.find {|user| user.slug == slug}
  end 
end
