# == Schema Information
#
# Table name: wishlist_shares
#
#  id           :integer          not null, primary key
#  share_id     :integer
#  user_id      :integer
#  buying_price :decimal(6, 2)    default(1.0), not null
#  sold_price   :decimal(6, 2)    default(1.0), not null
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe WishlistShare, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
