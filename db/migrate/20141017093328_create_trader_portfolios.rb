class CreateTraderPortfolios < ActiveRecord::Migration
  def change
    create_table :trader_portfolios do |t|
      t.references :portfolio, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
