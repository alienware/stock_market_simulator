class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :portfolio_name, null: false, default: ''
      t.decimal :portfolio_value, precision: 12, scale: 2, null: false, default: 0.00
      t.timestamps
    end
  end
end
