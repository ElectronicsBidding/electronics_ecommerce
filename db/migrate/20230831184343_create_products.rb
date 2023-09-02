class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :seller, foreign_key: {to_table: :users}, null: false
      t.references :buyer, foreign_key: {to_table: :users}, null: true
      t.references :category, foreign_key: true, null: false
      t.string :name, null: false
      t.float :starting_price, null: false
      t.text :description, null: false
      t.string :image, null: false
      t.string :status, null: false
      t.string :location, null: false
      t.date :bidding_end_time, null: false
      t.timestamps
    end
  end
end
