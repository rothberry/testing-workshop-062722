require "test_helper"

class AstronautTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  use_pp = true

  test "astro needs a name" do
    # find a test case
    astro = astronauts(:obi)
    # assert(a true value, if false, logs:"HI")
    puts "\nHI\n"
    assert(astro.name, "Astronaut needs a name!")
  end

  test "astro has many missions" do
    astro = astronauts(:obi)
    assert_equal(2, astro.missions.length, "No relations")
    assert_instance_of Mission, astro.missions[0]
  end

  test "astro has many planets" do
    astro = astronauts(:obi)
    assert_instance_of Planet, astro.planets[0]
  end

  test "astronaut needs all attributes" do
    astro = astronauts(:bad_one)
    puts "3"
    assert(!astro.name, "needs a name")
    assert(!astro.position, "needs a position")
  end

  test "can't create a astronaut without all the attributes" do
    assert_raise ActiveRecord::RecordInvalid do
      astro = Astronaut.create!(name: "Laura")
    end
  end

  test "astro can separte name into first and last" do
    astro = astronauts(:obi)
    assert(astro.split_name == ["Obi", "Juan"], "needs to split the name")
  end
end
