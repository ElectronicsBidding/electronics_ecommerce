class MakeBidIntervalNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :bid_interval, :float, null: false
  end
end
