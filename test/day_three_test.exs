defmodule Advent2018.DayThree.Test do
  use ExUnit.Case

  test "computes square inches of overlap" do
    input = """
    #1 @ 1,3: 4x4
    #2 @ 3,1: 4x4
    #3 @ 3,1: 4x4
    #4 @ 5,5: 2x2
    """

    assert Advent2018.DayThree.part_one(input) == 16
  end

  test "finds the common letters for the matching ids" do
    input = ""
    assert Advent2018.DayThree.part_two(input) != nil
  end
end
