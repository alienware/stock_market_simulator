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

require 'rails_helper'

RSpec.describe Portfolio, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
