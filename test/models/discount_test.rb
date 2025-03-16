# == Schema Information
#
# Table name: discounts
#
#  id               :integer          not null, primary key
#  code             :string
#  discount_percent :decimal(, )
#  valid_until      :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require "test_helper"

class DiscountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
