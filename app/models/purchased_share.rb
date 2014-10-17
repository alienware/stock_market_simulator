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

class PurchasedShare < ActiveRecord::Base
  belongs_to :share
  counter_culture :share
  belongs_to :user
  counter_culture :user

  has_paper_trail
end
