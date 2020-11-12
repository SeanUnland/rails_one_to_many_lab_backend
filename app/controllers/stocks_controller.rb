class StocksController < ApplicationController
  before_action :set_stock, only: [:show]

  # GET /stocks
  def index
    @stocks = Stock.all

    render json: @stocks
  end

  # GET /stocks/1
  def show
    stock_prices = @stock.average_prices
    render json: { stock: @stock, average_prices: stock_prices}
  end

  # # POST /stocks
  # def create
  #   @stock = Stock.new(stock_params)

  #   if @stock.save
  #     render json: @stock, status: :created, location: @stock
  #   else
  #     render json: @stock.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /stocks/1
  # def update
  #   if @stock.update(stock_params)
  #     render json: @stock
  #   else
  #     render json: @stock.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /stocks/1
  # def destroy
  #   @stock.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_params
      params.require(:stock).permit(:name)
    end
end