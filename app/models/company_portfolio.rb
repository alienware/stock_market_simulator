# == Schema Information
#
# Table name: company_portfolios
#
#  id           :integer          not null, primary key
#  portfolio_id :integer
#  company_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class CompanyPortfolio < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :company
  counter_culture :company
end
