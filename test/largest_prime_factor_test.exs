defmodule LargestPrimeFactorTest do
  use ExUnit.Case

  alias Euler.LargestPrimeFactor

  test "it can get the largest prime factor of a number" do
    assert LargestPrimeFactor.factor(2) == 2
    assert LargestPrimeFactor.factor(3) == 3
    assert LargestPrimeFactor.factor(4) == 2
    assert LargestPrimeFactor.factor(5) == 5
    assert LargestPrimeFactor.factor(13195) == 29
    assert LargestPrimeFactor.factor(600851475143) == 6857

  end

end
