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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company_portfolio do
  end
end
