require 'test_helper'

class CourseitemsControllerTest < ActionController::TestCase
  setup do
    @courseitem = courseitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courseitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create courseitem" do
    assert_difference('Courseitem.count') do
      post :create, courseitem: { image: @courseitem.image, intro: @courseitem.intro, title: @courseitem.title }
    end

    assert_redirected_to courseitem_path(assigns(:courseitem))
  end

  test "should show courseitem" do
    get :show, id: @courseitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @courseitem
    assert_response :success
  end

  test "should update courseitem" do
    patch :update, id: @courseitem, courseitem: { image: @courseitem.image, intro: @courseitem.intro, title: @courseitem.title }
    assert_redirected_to courseitem_path(assigns(:courseitem))
  end

  test "should destroy courseitem" do
    assert_difference('Courseitem.count', -1) do
      delete :destroy, id: @courseitem
    end

    assert_redirected_to courseitems_path
  end
end
