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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchased_share do
  end
end
