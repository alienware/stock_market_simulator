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
    company_name Faker::Company.name
    company_cash Random.rand(1000000.00..9999999999.00)

    after :create do |company|
      [*1..3].sample.times do
        company.owners << FactoryGirl.create(:user)
      end
    end

  end
end
