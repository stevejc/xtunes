class Artist < ActiveRecord::Base
  attr_accessible :name, :dob, :bio
  
  has_and_belongs_to_many :songs

end
