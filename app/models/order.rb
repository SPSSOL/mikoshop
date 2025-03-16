# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  total_price :decimal(, )
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_one :payment
  has_one :shipping
end
