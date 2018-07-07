defmodule MultiplesTest do
  use ExUnit.Case

  alias Euler.Multiples

  test "it calculates the correct value for 10" do
    assert Multiples.sum(10) == 23
  end

  test "it calculates the correct value for 1000" do
    assert Multiples.sum(1000) == 233168
  end
end
