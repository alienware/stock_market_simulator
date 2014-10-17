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

class WishlistShare < ActiveRecord::Base
  belongs_to :share
  belongs_to :user
  counter_culture :user

  has_paper_trail
end
