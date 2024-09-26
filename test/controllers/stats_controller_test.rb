require "test_helper"

class StatsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/stats.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Stat.count, data.length
  end
end
