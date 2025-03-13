# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  product_id :integer          not null
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ApplicationRecord
  belongs_to :product
end
