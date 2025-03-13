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

class Payment < ApplicationRecord
  belongs_to :order
end
