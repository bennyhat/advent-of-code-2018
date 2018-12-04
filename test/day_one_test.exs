defmodule Advent2018.DayOne.Test do
  use ExUnit.Case

  test "adds frequencies" do
    input = """
    +1
    +2
    -2
    +3
    -5
    """

    assert Advent2018.DayOne.part_one(input) == -1
  end

  test "finds first repating frequency" do
    input = """
    +1
    +2
    -2
    +3
    -4
    +3
    -1
    """

    assert Advent2018.DayOne.part_two(input) == 1
  end
end
