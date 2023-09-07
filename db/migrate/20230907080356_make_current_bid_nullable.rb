class MakeCurrentBidNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :current_bid, :float, null: true
  end
end
