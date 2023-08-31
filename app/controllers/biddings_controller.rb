class BiddingsController < ApplicationController
  before_action :set_bidding, only: %i[ show update destroy ]

  # GET /biddings
  def index
    @biddings = Bidding.all

    render json: @biddings
  end

  # GET /biddings/1
  def show
    render json: @bidding
  end

  # POST /biddings
  def create
    @bidding = Bidding.new(bidding_params)

    if @bidding.save
      render json: @bidding, status: :created, location: @bidding
    else
      render json: @bidding.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /biddings/1
  def update
    if @bidding.update(bidding_params)
      render json: @bidding
    else
      render json: @bidding.errors, status: :unprocessable_entity
    end
  end

  # DELETE /biddings/1
  def destroy
    @bidding.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bidding
      @bidding = Bidding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bidding_params
      params.fetch(:bidding, {})
    end
end
