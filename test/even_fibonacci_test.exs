defmodule EvenFibonacciTest do
  use ExUnit.Case

  alias Euler.EvenFibonacci

  test "it calculates the correct value for 4613732" do
    assert EvenFibonacci.sum(4000000) == 4613732
  end

end
