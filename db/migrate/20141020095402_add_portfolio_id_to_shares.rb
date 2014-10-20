class AddPortfolioIdToShares < ActiveRecord::Migration
  def change
    add_column :shares, :company_portfolio_id, :integer, null: false
    add_index :shares, :company_portfolio_id
  end
end
