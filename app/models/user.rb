class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :gender, :age, :balance, :email, :password, :password_confirmation, :remember_me, :song_ids
  
  # attr_accessible :title, :body
  
  has_many :mixtapes
  has_many :purchases
  has_many :songs, :through => :purchases
  
  
  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email) + "?d=mm"
    
    "http://gravatar.com/avatar/#{hash}"
  end
end
