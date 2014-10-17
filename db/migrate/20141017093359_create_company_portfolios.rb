class CreateCompanyPortfolios < ActiveRecord::Migration
  def change
    create_table :company_portfolios do |t|
      t.references :portfolio, index: true
      t.references :company, index: true
      t.timestamps
    end
  end
end
