# == Schema Information
#
# Table name: company_owners
#
#  id         :integer          not null, primary key
#  company_id :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe CompanyOwner, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
