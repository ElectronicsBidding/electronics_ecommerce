class ProductsController < ApplicationController
include Common

  def filter
    @products = Product.where(seller_id: params[:id])
    render json: {data: @products, success: true}
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {success: true}
  end

  
  private
    def model_params
      params.require(:payload).permit(:seller_id, :buyer_id, :category_id, :name, :starting_price, :description, :image, :status, :location, :bidding_end_time, :current_bid, :bid_interval)
    end
end
