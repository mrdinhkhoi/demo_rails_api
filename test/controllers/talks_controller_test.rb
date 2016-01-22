require 'test_helper'

class TalksControllerTest < ActionController::TestCase
  setup do
    @talk = talks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talks)
  end

  test "should create talk" do
    assert_difference('Talk.count') do
      post :create, talk: { name: @talk.name }
    end

    assert_response 201
  end

  test "should show talk" do
    get :show, id: @talk
    assert_response :success
  end

  test "should update talk" do
    put :update, id: @talk, talk: { name: @talk.name }
    assert_response 204
  end

  test "should destroy talk" do
    assert_difference('Talk.count', -1) do
      delete :destroy, id: @talk
    end

    assert_response 204
  end
end
