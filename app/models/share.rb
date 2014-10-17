# == Schema Information
#
# Table name: shares
#
#  id            :integer          not null, primary key
#  share_name    :string(255)      default(""), not null
#  share_symbol  :string(255)
#  initial_price :decimal(6, 2)    default(1.0), not null
#  share_price   :decimal(6, 2)    default(1.0), not null
#  created_at    :datetime
#  updated_at    :datetime
#

class Share < ActiveRecord::Base
  has_paper_trail
end
