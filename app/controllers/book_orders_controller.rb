class BookOrdersController < ApplicationController
  before_action :set_book_order, only: %i[ show update destroy ]

  # GET /book_orders
  def index
    @book_orders = BookOrder.all

    render json: @book_orders
  end

  # GET /book_orders/1
  def show
    render json: @book_order
  end

  # POST /book_orders
  def create
    @book_order = BookOrder.new(book_order_params)

    if @book_order.save
      render json: @book_order, status: :created, location: @book_order
    else
      render json: @book_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /book_orders/1
  def update
    if @book_order.update(book_order_params)
      render json: @book_order
    else
      render json: @book_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /book_orders/1
  def destroy
    @book_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_order
      @book_order = BookOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_order_params
      params.require(:book_order).permit(:order_id, :book_id)
    end
end
