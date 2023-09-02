class BiddingsController < ApplicationController
include Common

  private

    def model_params
      params.require(:payload).permit(:user_id, :product_id, :bidding_price)
    end
end
