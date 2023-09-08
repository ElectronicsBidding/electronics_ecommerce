class ChangeBidIntervalInProduct < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :bid_interval, :float
  end
end
