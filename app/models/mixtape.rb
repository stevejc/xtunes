# == Schema Information
#
# Table name: mixtapes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mixtape < ActiveRecord::Base
  attr_accessible :name, :playlists_attributes, :songs_attributes, :song_ids
  
  has_many :playlists
  has_many :songs, :through => :playlists
  belongs_to :user
  
  accepts_nested_attributes_for :playlists
  accepts_nested_attributes_for :songs
end
