require 'test_helper'

class SwimsControllerTest < ActionController::TestCase
  setup do
    @swim = swims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swim" do
    assert_difference('Swim.count') do
      post :create, swim: { distance: @swim.distance, duration: @swim.duration, start: @swim.start }
    end

    assert_redirected_to swim_path(assigns(:swim))
  end

  test "should show swim" do
    get :show, id: @swim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swim
    assert_response :success
  end

  test "should update swim" do
    patch :update, id: @swim, swim: { distance: @swim.distance, duration: @swim.duration, start: @swim.start }
    assert_redirected_to swim_path(assigns(:swim))
  end

  test "should destroy swim" do
    assert_difference('Swim.count', -1) do
      delete :destroy, id: @swim
    end

    assert_redirected_to swims_path
  end
end
