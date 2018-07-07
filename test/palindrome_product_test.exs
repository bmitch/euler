defmodule PalindromeProductTest do
  use ExUnit.Case

  alias Euler.PalindromeProduct

  test "it can find the largest palindrome product" do
    assert PalindromeProduct.largest_palindrome_product(2) == 9009
    assert PalindromeProduct.largest_palindrome_product(3) == 906609
  end

end
