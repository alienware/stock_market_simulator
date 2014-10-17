class CreateShareDailyStatistics < ActiveRecord::Migration
  def change
    create_table :share_daily_statistics do |t|
      t.references :share, index: true
      t.date :date
      t.decimal :day_high, precision: 6, scale: 2, null: false, default: 1.00
      t.decimal :day_low, precision: 6, scale: 2, null: false, default: 1.00
      t.integer :volume, null: false, default: 0
      t.timestamps
    end
  end
end
