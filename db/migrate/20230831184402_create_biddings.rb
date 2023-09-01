class CreateBiddings < ActiveRecord::Migration[7.0]
  def change
    create_table :biddings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :product, foreign_key: true, null: false
      t.float :bidding_price, null: false
      t.timestamps
    end
  end
end