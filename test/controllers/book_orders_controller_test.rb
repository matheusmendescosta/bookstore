require "test_helper"

class BookOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_order = book_orders(:one)
  end

  test "should get index" do
    get book_orders_url, as: :json
    assert_response :success
  end

  test "should create book_order" do
    assert_difference("BookOrder.count") do
      post book_orders_url, params: { book_order: { book_id: @book_order.book_id, order_id: @book_order.order_id } }, as: :json
    end

    assert_response :created
  end

  test "should show book_order" do
    get book_order_url(@book_order), as: :json
    assert_response :success
  end

  test "should update book_order" do
    patch book_order_url(@book_order), params: { book_order: { book_id: @book_order.book_id, order_id: @book_order.order_id } }, as: :json
    assert_response :success
  end

  test "should destroy book_order" do
    assert_difference("BookOrder.count", -1) do
      delete book_order_url(@book_order), as: :json
    end

    assert_response :no_content
  end
end
