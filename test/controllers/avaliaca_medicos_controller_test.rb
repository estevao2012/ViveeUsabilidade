require 'test_helper'

class AvaliacaMedicosControllerTest < ActionController::TestCase
  setup do
    @avaliaca_medico = avaliaca_medicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avaliaca_medicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avaliaca_medico" do
    assert_difference('AvaliacaMedico.count') do
      post :create, avaliaca_medico: { medico_id: @avaliaca_medico.medico_id, rating: @avaliaca_medico.rating, texto: @avaliaca_medico.texto, titulo: @avaliaca_medico.titulo }
    end

    assert_redirected_to avaliaca_medico_path(assigns(:avaliaca_medico))
  end

  test "should show avaliaca_medico" do
    get :show, id: @avaliaca_medico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avaliaca_medico
    assert_response :success
  end

  test "should update avaliaca_medico" do
    patch :update, id: @avaliaca_medico, avaliaca_medico: { medico_id: @avaliaca_medico.medico_id, rating: @avaliaca_medico.rating, texto: @avaliaca_medico.texto, titulo: @avaliaca_medico.titulo }
    assert_redirected_to avaliaca_medico_path(assigns(:avaliaca_medico))
  end

  test "should destroy avaliaca_medico" do
    assert_difference('AvaliacaMedico.count', -1) do
      delete :destroy, id: @avaliaca_medico
    end

    assert_redirected_to avaliaca_medicos_path
  end
end
