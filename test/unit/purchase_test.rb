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

require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
