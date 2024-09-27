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

  test "show" do
    get "/stats/#{Stat.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "total_points", "minutes_played", "created_at", "updated_at"], data.keys
  end

  test "update" do
    stat = Stat.first
    patch "/stats/#{stat.id}.json", params: { total_points: 12, minutes_played: 34 }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 12, data["total_points"]
  end
end
