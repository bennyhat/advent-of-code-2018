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
    ids = input
    |> String.trim()
    |> String.split("\n")

    id_length = ids
    |> List.first()
    |> String.length()

    for x <- ids, y <- ids do
      String.to_charlist(x)
      |> Enum.zip(String.to_charlist(y))
      |> Enum.map(fn {a, b} -> {a, a - b} end)
      |> Enum.filter(fn {a, b} -> b == 0 end)
      |> Enum.map(fn {a, b} -> a end)
    end
    |> Enum.filter(fn a -> Enum.count(a) == id_length - 1 end)
    |> Enum.uniq()
    |> List.first()
  end
end
