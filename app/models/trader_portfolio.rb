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

class TraderPortfolio < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :user
  counter_culture :user
end
