# == Schema Information
#
# Table name: portfolios
#
#  id              :integer          not null, primary key
#  portfolio_name  :string(255)      default(""), not null
#  portfolio_value :decimal(12, 2)   default(0.0), not null
#  created_at      :datetime
#  updated_at      :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :portfolio do
  end
end
