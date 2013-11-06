require 'test_helper'

class DetalhesControllerTest < ActionController::TestCase
  setup do
    @detalhe = detalhes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalhes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalhe" do
    assert_difference('Detalhe.count') do
      post :create, detalhe: { item_id_id: @detalhe.item_id_id, quantidade: @detalhe.quantidade }
    end

    assert_redirected_to detalhe_path(assigns(:detalhe))
  end

  test "should show detalhe" do
    get :show, id: @detalhe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalhe
    assert_response :success
  end

  test "should update detalhe" do
    patch :update, id: @detalhe, detalhe: { item_id_id: @detalhe.item_id_id, quantidade: @detalhe.quantidade }
    assert_redirected_to detalhe_path(assigns(:detalhe))
  end

  test "should destroy detalhe" do
    assert_difference('Detalhe.count', -1) do
      delete :destroy, id: @detalhe
    end

    assert_redirected_to detalhes_path
  end
end
