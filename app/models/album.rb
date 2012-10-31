class Album < ActiveRecord::Base
  attr_accessible :name, :photo, :release_date, :remote_photo_url
  
  has_and_belongs_to_many :songs
  has_many :artists, :through => :songs
  
  mount_uploader :photo, PikUploader
end
