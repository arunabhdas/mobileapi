require 'test_helper'

class ChannelsControllerTest < ActionController::TestCase
  setup do
    @channel = channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:channels)
  end

  test "should create channel" do
    assert_difference('Channel.count') do
      post :create, channel: { name: @channel.name }
    end

    assert_response 201
  end

  test "should show channel" do
    get :show, id: @channel
    assert_response :success
  end

  test "should update channel" do
    put :update, id: @channel, channel: { name: @channel.name }
    assert_response 204
  end

  test "should destroy channel" do
    assert_difference('Channel.count', -1) do
      delete :destroy, id: @channel
    end

    assert_response 204
  end
end
