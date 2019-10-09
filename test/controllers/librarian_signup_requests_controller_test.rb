require 'test_helper'

class LibrarianSignupRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @librarian_signup_request = librarian_signup_requests(:one)
  end

  test "should get index" do
    get librarian_signup_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_librarian_signup_request_url
    assert_response :success
  end

  test "should create librarian_signup_request" do
    assert_difference('LibrarianSignupRequest.count') do
      post librarian_signup_requests_url, params: { librarian_signup_request: { librarian_id: @librarian_signup_request.librarian_id } }
    end

    assert_redirected_to librarian_signup_request_url(LibrarianSignupRequest.last)
  end

  test "should show librarian_signup_request" do
    get librarian_signup_request_url(@librarian_signup_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_librarian_signup_request_url(@librarian_signup_request)
    assert_response :success
  end

  test "should update librarian_signup_request" do
    patch librarian_signup_request_url(@librarian_signup_request), params: { librarian_signup_request: { librarian_id: @librarian_signup_request.librarian_id } }
    assert_redirected_to librarian_signup_request_url(@librarian_signup_request)
  end

  test "should destroy librarian_signup_request" do
    assert_difference('LibrarianSignupRequest.count', -1) do
      delete librarian_signup_request_url(@librarian_signup_request)
    end

    assert_redirected_to librarian_signup_requests_url
  end
end
