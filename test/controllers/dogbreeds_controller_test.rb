require "test_helper"

class DogbreedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dogbreed = dogbreeds(:one)
  end

  test "should get index" do
    get dogbreeds_url, as: :json
    assert_response :success
  end

  test "should create dogbreed" do
    assert_difference('Dogbreed.count') do
      post dogbreeds_url, params: { dogbreed: { bred_for: @dogbreed.bred_for, breed_group: @dogbreed.breed_group, height: @dogbreed.height, life_span: @dogbreed.life_span, name: @dogbreed.name, origin: @dogbreed.origin, temperament: @dogbreed.temperament, url: @dogbreed.url, weight: @dogbreed.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show dogbreed" do
    get dogbreed_url(@dogbreed), as: :json
    assert_response :success
  end

  test "should update dogbreed" do
    patch dogbreed_url(@dogbreed), params: { dogbreed: { bred_for: @dogbreed.bred_for, breed_group: @dogbreed.breed_group, height: @dogbreed.height, life_span: @dogbreed.life_span, name: @dogbreed.name, origin: @dogbreed.origin, temperament: @dogbreed.temperament, url: @dogbreed.url, weight: @dogbreed.weight } }, as: :json
    assert_response 200
  end

  test "should destroy dogbreed" do
    assert_difference('Dogbreed.count', -1) do
      delete dogbreed_url(@dogbreed), as: :json
    end

    assert_response 204
  end
end
