# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  mixtape_id :integer
#  song_id    :integer
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Playlist < ActiveRecord::Base
  attr_accessible :order, :song_id, :mixtape_id
  
  belongs_to :song
  belongs_to :mixtape
end
