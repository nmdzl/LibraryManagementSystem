require 'test_helper'

class SpecialCollectionRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @special_collection_request = special_collection_requests(:one)
  end

  test "should get index" do
    get special_collection_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_special_collection_request_url
    assert_response :success
  end

  test "should create special_collection_request" do
    assert_difference('SpecialCollectionRequest.count') do
      post special_collection_requests_url, params: { special_collection_request: { book_id: @special_collection_request.book_id, student_id: @special_collection_request.student_id } }
    end

    assert_redirected_to special_collection_request_url(SpecialCollectionRequest.last)
  end

  test "should show special_collection_request" do
    get special_collection_request_url(@special_collection_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_special_collection_request_url(@special_collection_request)
    assert_response :success
  end

  test "should update special_collection_request" do
    patch special_collection_request_url(@special_collection_request), params: { special_collection_request: { book_id: @special_collection_request.book_id, student_id: @special_collection_request.student_id } }
    assert_redirected_to special_collection_request_url(@special_collection_request)
  end

  test "should destroy special_collection_request" do
    assert_difference('SpecialCollectionRequest.count', -1) do
      delete special_collection_request_url(@special_collection_request)
    end

    assert_redirected_to special_collection_requests_url
  end
end
