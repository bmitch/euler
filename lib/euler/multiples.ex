defmodule Euler.Multiples do

  def sum(number) do
    get_sum(number - 1, 0)
  end

  defp get_sum(0, sum), do: sum

  defp get_sum(number, sum) do
    case (div_by_three_or_five(number)) do
      true -> get_sum(number - 1, sum + number)
      _ -> get_sum(number - 1, sum)
    end
  end

  defp div_by_three_or_five(number) when rem(number, 3) == 0,  do: true
  defp div_by_three_or_five(number) when rem(number, 5) == 0,  do: true
  defp div_by_three_or_five(number), do: false

end
