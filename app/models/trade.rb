# == Schema Information
#
# Table name: trades
#
#  id             :integer          not null, primary key
#  seller_id      :integer
#  buyer_id       :integer
#  share_id       :integer
#  trade_quantity :integer          default(1), not null
#  share_price    :decimal(6, 2)    default(1.0), not null
#  created_at     :datetime
#  updated_at     :datetime
#

class Trade < ActiveRecord::Base
  belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'
  counter_culture :seller, column_name: 'selling_trades_count'
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'
  counter_culture :buyer, column_name: 'buying_trades_count'
  belongs_to :share
  counter_culture :share

  has_paper_trail
end
