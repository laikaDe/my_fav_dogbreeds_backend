require "test_helper"

class DogtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dogtest = dogtests(:one)
  end

  test "should get index" do
    get dogtests_url, as: :json
    assert_response :success
  end

  test "should create dogtest" do
    assert_difference('Dogtest.count') do
      post dogtests_url, params: { dogtest: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show dogtest" do
    get dogtest_url(@dogtest), as: :json
    assert_response :success
  end

  test "should update dogtest" do
    patch dogtest_url(@dogtest), params: { dogtest: {  } }, as: :json
    assert_response 200
  end

  test "should destroy dogtest" do
    assert_difference('Dogtest.count', -1) do
      delete dogtest_url(@dogtest), as: :json
    end

    assert_response 204
  end
end
