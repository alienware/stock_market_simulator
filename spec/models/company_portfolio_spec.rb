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

require 'rails_helper'

RSpec.describe CompanyPortfolio, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
