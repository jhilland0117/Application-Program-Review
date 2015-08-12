require 'test_helper'

class SectionDataControllerTest < ActionController::TestCase
  setup do
    @section_datum = section_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:section_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create section_datum" do
    assert_difference('SectionDatum.count') do
      post :create, section_datum: { data: @section_datum.data }
    end

    assert_redirected_to section_datum_path(assigns(:section_datum))
  end

  test "should show section_datum" do
    get :show, id: @section_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @section_datum
    assert_response :success
  end

  test "should update section_datum" do
    patch :update, id: @section_datum, section_datum: { data: @section_datum.data }
    assert_redirected_to section_datum_path(assigns(:section_datum))
  end

  test "should destroy section_datum" do
    assert_difference('SectionDatum.count', -1) do
      delete :destroy, id: @section_datum
    end

    assert_redirected_to section_data_path
  end
end
