require 'test_helper'

class AprReportsControllerTest < ActionController::TestCase
  setup do
    @apr_report = apr_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apr_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apr_report" do
    assert_difference('AprReport.count') do
      post :create, apr_report: { name: @apr_report.name }
    end

    assert_redirected_to apr_report_path(assigns(:apr_report))
  end

  test "should show apr_report" do
    get :show, id: @apr_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apr_report
    assert_response :success
  end

  test "should update apr_report" do
    patch :update, id: @apr_report, apr_report: { name: @apr_report.name }
    assert_redirected_to apr_report_path(assigns(:apr_report))
  end

  test "should destroy apr_report" do
    assert_difference('AprReport.count', -1) do
      delete :destroy, id: @apr_report
    end

    assert_redirected_to apr_reports_path
  end
end
