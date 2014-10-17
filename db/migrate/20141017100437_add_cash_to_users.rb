class AddCashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cash, :decimal, precision: 12, scale: 2, null: false, default: 0.00
  end
end
