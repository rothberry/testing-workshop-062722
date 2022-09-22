require "test_helper"

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "has an index route" do
    get "/planets"
    assert_response :success
    planets_json = JSON.parse(@response.body)
    # pp planets_json
    # debugger
    assert_equal(2, planets_json.length, "There should be 2 planets")
  end

  test "can create a planet" do
    assert_difference("Planet.count") do 
      post '/planets', params: { name: "danna", solar_system: "eart", star: "not sun"}
      # post "/planets", params: { name: "Cygnus-2", solar_system: "eart", star: "not sun" }
    end

    response_json = JSON.parse(body)
    assert_equal("danna", response_json["name"])
    assert_equal("eart", response_json["solar_system"])
    # debugger
  end
end
