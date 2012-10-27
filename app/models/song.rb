class Song < ActiveRecord::Base
  attr_accessible :name, :song_file, :rating, :favorite, :price, :photo, :lyrics, :artist_ids, :genre_ids, :album_ids
  
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :albums
  has_and_belongs_to_many :genres
  has_many :playlists
  has_many :mixtapes, :through => :playlists
  has_many :purchases
  has_many :users, :through => :purchases
  
  validates :name, :presence => true
  
  mount_uploader :song_file, Mp3Uploader
   
end
