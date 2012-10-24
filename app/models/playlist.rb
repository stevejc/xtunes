class Playlist < ActiveRecord::Base
  attr_accessible :order, :song_id, :mixtape_id
  
  belongs_to :song
  belongs_to :mixtape
end
