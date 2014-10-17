# == Schema Information
#
# Table name: purchased_shares
#
#  id              :integer          not null, primary key
#  share_id        :integer
#  user_id         :integer
#  purchased_price :decimal(6, 2)    default(1.0), not null
#  selling_price   :decimal(6, 2)    default(1.0), not null
#  created_at      :datetime
#  updated_at      :datetime
#

require 'rails_helper'

RSpec.describe PurchasedShare, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
