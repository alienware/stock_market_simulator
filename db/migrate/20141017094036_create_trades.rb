class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.references :share, index: true
      t.integer :trade_quantity, null: false, default: 1
      t.decimal :share_price, precision: 6, scale: 2, null: false, default: 1.00
      t.timestamps
    end
    add_index :trades, :seller_id
    add_index :trades, :buyer_id
  end
end
