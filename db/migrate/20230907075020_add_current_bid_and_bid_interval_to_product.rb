class AddCurrentBidAndBidIntervalToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :current_bid, :float
    add_column :products, :bid_interval, :float
  end
end
