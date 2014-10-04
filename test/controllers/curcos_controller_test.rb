require 'test_helper'

class CurcosControllerTest < ActionController::TestCase
  setup do
    @curco = curcos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curcos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curco" do
    assert_difference('Curco.count') do
      post :create, curco: { descripcion: @curco.descripcion, precio: @curco.precio, titulo: @curco.titulo }
    end

    assert_redirected_to curco_path(assigns(:curco))
  end

  test "should show curco" do
    get :show, id: @curco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curco
    assert_response :success
  end

  test "should update curco" do
    patch :update, id: @curco, curco: { descripcion: @curco.descripcion, precio: @curco.precio, titulo: @curco.titulo }
    assert_redirected_to curco_path(assigns(:curco))
  end

  test "should destroy curco" do
    assert_difference('Curco.count', -1) do
      delete :destroy, id: @curco
    end

    assert_redirected_to curcos_path
  end
end
