# == Schema Information
#
# Table name: shippings
#
#  id              :integer          not null, primary key
#  order_id        :integer          not null
#  pickup_location :string
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require "test_helper"

class ShippingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
