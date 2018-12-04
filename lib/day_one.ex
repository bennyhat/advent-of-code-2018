defmodule Advent2018.DayOne do
  def part_one(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end

  def part_two(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Stream.cycle
    |> Enum.reduce_while([0], fn x, acc ->
      next = List.first(acc) + x
      unless Enum.member?(acc, next) do
        {:cont, [next | acc]}
      else
        {:halt, [next | acc]}
      end
    end)
    |> List.first()
  end
end
