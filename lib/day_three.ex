defmodule Advent2018.DayThree do

  def part_one(input) do
    claims = input
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&parse_claim/1)
    |> Enum.map(&convert_claim/1)
    |> Enum.reduce(%{}, &process_claim/2)
    |> Enum.filter(fn {_x, y} -> y > 1 end)
    |> Enum.count()
  end

  def part_two(input) do

  end

  defp parse_claim(claim) do
    Regex.named_captures(
      ~r/^\#(?<i>.+) @ (?<l>.+),(?<t>.+): (?<w>.+)x(?<h>.+)$/,
      claim
    )
  end

  defp convert_claim(claim) do
    claim
    |> Enum.map(fn {x, y} -> {x, String.to_integer(y)} end)
    |> Enum.into(%{})
  end

  defp process_claim(%{"l" => l, "t" => t, "w" => w, "h" => h}, acc) do
    row = Range.new(l, l+w-1)
    col = Range.new(t, t+h-1)

    next = for x <- row, y <- col do
      {{x, y}, 1}
    end
    |> Enum.into(%{})

    Enum.concat(acc, next)
    Map.merge(acc, next, fn _k, v1, v2 ->
      v1 + v2
    end)
  end
end
