require 'test_helper'

class ResumesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resumes_index_url
    assert_response :success
  end

  test "should get new" do
    get resumes_new_url
    assert_response :success
  end

  test "should get crate" do
    get resumes_crate_url
    assert_response :success
  end

  test "should get destroy" do
    get resumes_destroy_url
    assert_response :success
  end

end
