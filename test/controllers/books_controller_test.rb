require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url, as: :json
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { author_id: @book.author_id, isbn: @book.isbn, out_of_print: @book.out_of_print, price: @book.price, supplier_id: @book.supplier_id, title: @book.title, views: @book.views, year_published: @book.year_published } }, as: :json
    end

    assert_response :created
  end

  test "should show book" do
    get book_url(@book), as: :json
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author_id: @book.author_id, isbn: @book.isbn, out_of_print: @book.out_of_print, price: @book.price, supplier_id: @book.supplier_id, title: @book.title, views: @book.views, year_published: @book.year_published } }, as: :json
    assert_response :success
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book), as: :json
    end

    assert_response :no_content
  end
end
