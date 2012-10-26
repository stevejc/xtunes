class Purchase < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :song_id, :user_id, :paid, :purchased_date
  
  belongs_to :song
  belongs_to :user  

end
