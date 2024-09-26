require "test_helper"

class StatsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/stats.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Stat.count, data.length
  end
  test "create" do
    assert_difference "Stat.count", 1 do
      post "/stats.json", params: { total_points: 20, minutes_played: 25 }
      assert_response 200
    end
  end
end
