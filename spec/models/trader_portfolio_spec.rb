# == Schema Information
#
# Table name: trader_portfolios
#
#  id           :integer          not null, primary key
#  portfolio_id :integer
#  user_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe TraderPortfolio, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
