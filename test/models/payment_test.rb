# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  order_id   :integer          not null
#  method     :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
