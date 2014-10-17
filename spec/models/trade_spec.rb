# == Schema Information
#
# Table name: trades
#
#  id             :integer          not null, primary key
#  seller_id      :integer
#  buyer_id       :integer
#  share_id       :integer
#  trade_quantity :integer          default(1), not null
#  share_price    :decimal(6, 2)    default(1.0), not null
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe Trade, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
