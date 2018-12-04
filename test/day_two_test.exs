defmodule Advent2018.DayTwo.Test do
  use ExUnit.Case

  test "computes checksum" do
    input = """
    abcdef
    bababc
    abbcde
    abcccd
    aabcdd
    abcdee
    ababab
    """

    assert Advent2018.DayTwo.part_one(input) == 12
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

    assert Advent2018.DayTwo.part_two(input) == 1
  end
end
