require 'test_helper'

class MiTareasControllerTest < ActionController::TestCase
  setup do
    @mi_tarea = mi_tareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mi_tareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mi_tarea" do
    assert_difference('MiTarea.count') do
      post :create, mi_tarea: { Comer: @mi_tarea.Comer, Direccion: @mi_tarea.Direccion, Dormir: @mi_tarea.Dormir, Edad: @mi_tarea.Edad, Fecha: @mi_tarea.Fecha, Nombre: @mi_tarea.Nombre }
    end

    assert_redirected_to mi_tarea_path(assigns(:mi_tarea))
  end

  test "should show mi_tarea" do
    get :show, id: @mi_tarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mi_tarea
    assert_response :success
  end

  test "should update mi_tarea" do
    patch :update, id: @mi_tarea, mi_tarea: { Comer: @mi_tarea.Comer, Direccion: @mi_tarea.Direccion, Dormir: @mi_tarea.Dormir, Edad: @mi_tarea.Edad, Fecha: @mi_tarea.Fecha, Nombre: @mi_tarea.Nombre }
    assert_redirected_to mi_tarea_path(assigns(:mi_tarea))
  end

  test "should destroy mi_tarea" do
    assert_difference('MiTarea.count', -1) do
      delete :destroy, id: @mi_tarea
    end

    assert_redirected_to mi_tareas_path
  end
end
