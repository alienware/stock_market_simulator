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

class CompanyOwner < ActiveRecord::Base
  belongs_to :company
  belongs_to :user

  has_paper_trail
end
