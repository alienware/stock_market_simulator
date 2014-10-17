# == Schema Information
#
# Table name: share_daily_statistics
#
#  id         :integer          not null, primary key
#  share_id   :integer
#  date       :date
#  day_high   :decimal(6, 2)    default(1.0), not null
#  day_low    :decimal(6, 2)    default(1.0), not null
#  volume     :integer          default(0), not null
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :share_daily_statistic do
  end
end
