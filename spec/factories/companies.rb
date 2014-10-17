# == Schema Information
#
# Table name: companies
#
#  id                       :integer          not null, primary key
#  company_name             :string(255)      default(""), not null
#  company_cash             :decimal(12, 2)
#  company_portfolios_count :integer          default(0), not null
#  created_at               :datetime
#  updated_at               :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
  end
end
