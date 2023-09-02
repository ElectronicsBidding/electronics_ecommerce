class CategoriesController < ApplicationController
  include Common

  private
    def model_params
      params.require(:payload).permit(:name, :image)
    end
end
