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

class ShareDailyStatistic < ActiveRecord::Base
  belongs_to :share
  counter_culture :share

  has_paper_trail
end
