# == Schema Information
#
# Table name: purchases
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  song_id        :integer
#  paid           :decimal(, )
#  purchased_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Purchase < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :song_id, :user_id, :paid, :purchased_date
  
  belongs_to :song
  belongs_to :user  

end
