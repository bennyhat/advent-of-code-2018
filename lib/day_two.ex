defmodule Advent2018.DayTwo do
  def part_one(input) do
    input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(fn id ->
      {
        has_repetition?(id, 2),
        has_repetition?(id, 3),
      }
    end)
    |> Enum.unzip()
    |> Tuple.to_list()
    |> Enum.map(&Enum.sum/1)
    |> Enum.reduce(&Kernel.*/2)
  end

  defp has_repetition?(id, length) do
    id_length = String.length(id)

    id
    |> String.codepoints()
    |> Enum.any?(fn cp ->
      id
      |> String.replace(cp, "")
      |> String.length()
      |> Kernel.+(length)
      |> Kernel.==(id_length)
    end)
    |> boolean_to_integer()
  end

  defp boolean_to_integer(boolean) do
    if boolean, do: 1, else: 0
  end

  def part_two(input) do
  end
end
