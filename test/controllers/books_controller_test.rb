require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    response = get(:show, id: Book.last.id)
    assert_response :success
  end

end
