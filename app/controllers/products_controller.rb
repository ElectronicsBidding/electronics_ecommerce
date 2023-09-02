class ProductsController < ApplicationController
include Common
  
  private
    def model_params
      params.require(:payload).permit(:seller_id, :buyer_id, :category_id, :name, :starting_price, :description, :image, :status, :location, :bidding_end_time)
    end
end
