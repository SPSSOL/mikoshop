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

class Shipping < ApplicationRecord
  belongs_to :order
end
