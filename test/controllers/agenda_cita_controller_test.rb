require 'test_helper'

class AgendaCitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agenda_citum = agenda_cita(:one)
  end

  test "should get index" do
    get agenda_cita_url
    assert_response :success
  end

  test "should get new" do
    get new_agenda_citum_url
    assert_response :success
  end

  test "should create agenda_citum" do
    assert_difference('AgendaCitum.count') do
      post agenda_cita_url, params: { agenda_citum: { especialidad: @agenda_citum.especialidad, fecha: @agenda_citum.fecha, ips: @agenda_citum.ips, paciente: @agenda_citum.paciente, profesional: @agenda_citum.profesional } }
    end

    assert_redirected_to agenda_citum_url(AgendaCitum.last)
  end

  test "should show agenda_citum" do
    get agenda_citum_url(@agenda_citum)
    assert_response :success
  end

  test "should get edit" do
    get edit_agenda_citum_url(@agenda_citum)
    assert_response :success
  end

  test "should update agenda_citum" do
    patch agenda_citum_url(@agenda_citum), params: { agenda_citum: { especialidad: @agenda_citum.especialidad, fecha: @agenda_citum.fecha, ips: @agenda_citum.ips, paciente: @agenda_citum.paciente, profesional: @agenda_citum.profesional } }
    assert_redirected_to agenda_citum_url(@agenda_citum)
  end

  test "should destroy agenda_citum" do
    assert_difference('AgendaCitum.count', -1) do
      delete agenda_citum_url(@agenda_citum)
    end

    assert_redirected_to agenda_cita_url
  end
end
