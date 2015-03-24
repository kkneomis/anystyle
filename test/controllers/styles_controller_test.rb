require 'test_helper'

class StylesControllerTest < ActionController::TestCase
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create style" do
    assert_difference('Style.count') do
      post :create, style: { description: @style.description, image1: @style.image1, image2: @style.image2, image3: @style.image3, image4: @style.image4, name: @style.name, poster_id: @style.poster_id, stylist_id: @style.stylist_id }
    end

    assert_redirected_to style_path(assigns(:style))
  end

  test "should show style" do
    get :show, id: @style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @style
    assert_response :success
  end

  test "should update style" do
    patch :update, id: @style, style: { description: @style.description, image1: @style.image1, image2: @style.image2, image3: @style.image3, image4: @style.image4, name: @style.name, poster_id: @style.poster_id, stylist_id: @style.stylist_id }
    assert_redirected_to style_path(assigns(:style))
  end

  test "should destroy style" do
    assert_difference('Style.count', -1) do
      delete :destroy, id: @style
    end

    assert_redirected_to styles_path
  end
end
