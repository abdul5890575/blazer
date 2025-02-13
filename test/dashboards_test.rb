require_relative "test_helper"

class DashboardsTest < ActionDispatch::IntegrationTest
  def test_new
    get blazer.new_dashboard_path
    assert_response :success
  end

  def test_show
    dashboard = create_dashboard
    get blazer.dashboard_path(dashboard)
    assert_response :success
  end

  def test_destroy
    dashboard = create_dashboard
    delete blazer.dashboard_path(dashboard)
    assert_response :redirect
  end

  def create_dashboard
    Blazer::Dashboard.create!(name: "Test")
  end
end
