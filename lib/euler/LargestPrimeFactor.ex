defmodule Euler.LargestPrimeFactor do

  def factor(number) do
     [highest | _rest] = do_factor(number, 2, [])
     highest
  end

  defp do_factor(1, divisor, factors) do
    factors
  end

  defp do_factor(number, divisor, factors) when rem(number, divisor) == 0 do
    div(number, divisor)
    |> do_factor(divisor, [divisor | factors])
  end

  defp do_factor(number, divisor, factors) do
    do_factor(number, divisor + 1, factors)
  end

end
