# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  rating     :integer
#  favorite   :boolean
#  price      :decimal(, )
#  photo      :string(255)
#  song_file  :string(255)
#  lyrics     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
  validates :price, :numericality => { :greater_than => 0.01 }
  
  mount_uploader :song_file, Mp3Uploader
   
end
