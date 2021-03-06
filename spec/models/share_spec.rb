# == Schema Information
#
# Table name: shares
#
#  id                           :integer          not null, primary key
#  share_name                   :string(255)      default(""), not null
#  share_symbol                 :string(255)
#  initial_price                :decimal(6, 2)    default(1.0), not null
#  share_price                  :decimal(6, 2)    default(1.0), not null
#  purchased_shares_count       :integer          default(0), not null
#  share_daily_statistics_count :integer          default(0), not null
#  trades_count                 :integer          default(0), not null
#  created_at                   :datetime
#  updated_at                   :datetime
#  company_portfolio_id         :integer          not null
#

require 'rails_helper'

RSpec.describe Share, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
