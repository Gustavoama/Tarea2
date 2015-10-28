require 'test_helper'

class SusDatosControllerTest < ActionController::TestCase
  setup do
    @sus_dato = sus_datos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sus_datos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sus_dato" do
    assert_difference('SusDato.count') do
      post :create, sus_dato: { Comer: @sus_dato.Comer, Direccion: @sus_dato.Direccion, Dormir: @sus_dato.Dormir, Edad: @sus_dato.Edad, Fecha: @sus_dato.Fecha, Nombre: @sus_dato.Nombre }
    end

    assert_redirected_to sus_dato_path(assigns(:sus_dato))
  end

  test "should show sus_dato" do
    get :show, id: @sus_dato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sus_dato
    assert_response :success
  end

  test "should update sus_dato" do
    patch :update, id: @sus_dato, sus_dato: { Comer: @sus_dato.Comer, Direccion: @sus_dato.Direccion, Dormir: @sus_dato.Dormir, Edad: @sus_dato.Edad, Fecha: @sus_dato.Fecha, Nombre: @sus_dato.Nombre }
    assert_redirected_to sus_dato_path(assigns(:sus_dato))
  end

  test "should destroy sus_dato" do
    assert_difference('SusDato.count', -1) do
      delete :destroy, id: @sus_dato
    end

    assert_redirected_to sus_datos_path
  end
end
