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

require 'rails_helper'

RSpec.describe Company, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
