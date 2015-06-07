require 'test_helper'

class UserblogsControllerTest < ActionController::TestCase
  setup do
    @userblog = userblogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userblogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userblog" do
    assert_difference('Userblog.count') do
      post :create, userblog: { description: @userblog.description, intro: @userblog.intro, meta_description: @userblog.meta_description, seo_title: @userblog.seo_title, subtitle: @userblog.subtitle, tags: @userblog.tags, title: @userblog.title }
    end

    assert_redirected_to userblog_path(assigns(:userblog))
  end

  test "should show userblog" do
    get :show, id: @userblog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userblog
    assert_response :success
  end

  test "should update userblog" do
    patch :update, id: @userblog, userblog: { description: @userblog.description, intro: @userblog.intro, meta_description: @userblog.meta_description, seo_title: @userblog.seo_title, subtitle: @userblog.subtitle, tags: @userblog.tags, title: @userblog.title }
    assert_redirected_to userblog_path(assigns(:userblog))
  end

  test "should destroy userblog" do
    assert_difference('Userblog.count', -1) do
      delete :destroy, id: @userblog
    end

    assert_redirected_to userblogs_path
  end
end
