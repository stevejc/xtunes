class Mixtape < ActiveRecord::Base
  attr_accessible :name, :playlists_attributes, :songs_attributes, :song_ids
  
  has_many :playlists
  has_many :songs, :through => :playlists
  belongs_to :user
  
  accepts_nested_attributes_for :playlists
  accepts_nested_attributes_for :songs
end
