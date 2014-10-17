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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wishlist_share do
  end
end
