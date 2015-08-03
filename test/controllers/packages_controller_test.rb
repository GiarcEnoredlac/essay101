require 'test_helper'

class PackagesControllerTest < ActionController::TestCase
  setup do
    @package = packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package" do
    assert_difference('Package.count') do
      post :create, package: { add_on_price: @package.add_on_price, allow_critique: @package.allow_critique, allow_draft: @package.allow_draft, allow_internal_edits: @package.allow_internal_edits, allow_score: @package.allow_score, internal_comment: @package.internal_comment, name: @package.name, number_of_editors: @package.number_of_editors, price: @package.price, turnover: @package.turnover }
    end

    assert_redirected_to package_path(assigns(:package))
  end

  test "should show package" do
    get :show, id: @package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package
    assert_response :success
  end

  test "should update package" do
    patch :update, id: @package, package: { add_on_price: @package.add_on_price, allow_critique: @package.allow_critique, allow_draft: @package.allow_draft, allow_internal_edits: @package.allow_internal_edits, allow_score: @package.allow_score, internal_comment: @package.internal_comment, name: @package.name, number_of_editors: @package.number_of_editors, price: @package.price, turnover: @package.turnover }
    assert_redirected_to package_path(assigns(:package))
  end

  test "should destroy package" do
    assert_difference('Package.count', -1) do
      delete :destroy, id: @package
    end

    assert_redirected_to packages_path
  end
end
