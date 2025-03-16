# == Schema Information
#
# Table name: promo_banners
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image_url   :string
#  active      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "test_helper"

class PromoBannerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
