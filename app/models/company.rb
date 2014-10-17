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

class Company < ActiveRecord::Base
  has_many :company_portfolios
  has_many :portfolios, through: :company_portfolios
  has_many :company_owners
  has_many :owners, through: :company_owners, source: :user
end
