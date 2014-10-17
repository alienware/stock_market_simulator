class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name, null: false, default: ''
      t.decimal :company_cash, precision: 12, scale: 2
      t.integer :company_portfolios_count, null: false, default: 0
      t.timestamps
    end
  end
end
