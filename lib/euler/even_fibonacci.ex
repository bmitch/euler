defmodule Euler.EvenFibonacci do


  @doc """
  Considers the terms in the Fibonacci sequence whose
  values do not exceed provided number and finds the
  sum of the even-valued terms.
  """
  def sum(max) do
    fib(1, max, [])
    |> Enum.reverse
    |> get_sum(max)
  end

  # When we reach the max, return the sequence
  defp fib(number, max, [last | rest]) when last >= max, do: [last | rest]

  defp fib(1, max, []) do
    fib(1 + 1, max, [0 + 1])
  end

  defp fib(2, max, [prev_sequence | rest_sequence]) do
    fib(2 + 1, max, [0 + 2 | [prev_sequence | rest_sequence] ])
  end

  defp fib(number, max, [last | [penult |rest_sequence] ]) do
    fib(number + 1, max, [last + penult | [last | [penult |rest_sequence] ]])
  end

  defp get_sum([], _max), do: 0
  defp get_sum(list, max), do: do_get_sum(list, max, 0)

  defp do_get_sum([head | tail], max, sum) when head >= max,  do: sum

  defp do_get_sum([head | tail], _max, sum) do
    case even?(head) do
      true -> do_get_sum(tail, _max, sum + head)
      _ ->
        do_get_sum(tail, _max, sum)
    end
  end

  defp even?(number) when rem(number, 2) == 0,  do: true
  defp even?(_not_even), do: false


end
