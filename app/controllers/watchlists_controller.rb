class WatchlistsController < ApplicationController
include Common
  private
    def model_params
      params.require(:payload).permit(:user_id, :product_id)
    end
end
