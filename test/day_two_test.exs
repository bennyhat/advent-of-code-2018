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

  test "finds the common letters for the matching ids" do
    input = """
    abcde
    fghij
    klmno
    pqrst
    fguij
    axcye
    wvxyz
    """

    assert Advent2018.DayTwo.part_two(input) == 'fgij'
  end
end
