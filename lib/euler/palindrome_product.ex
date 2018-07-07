defmodule Euler.PalindromeProduct do

  def largest_palindrome_product(number) do
    alpha = String.duplicate("9", number)
    {alpha, _} = Integer.parse(alpha)
    beta = alpha
    all_palindrome_products(alpha, beta, alpha, [])
    |> Enum.max
  end

  defp all_palindrome_products(alpha, beta, original_number, products) when alpha == 1 and beta == 1 do
    products
  end


  defp all_palindrome_products(alpha, beta, original_number, products) when alpha == 1 do
    case is_palindrome?(alpha * beta) do
      true ->
          all_palindrome_products(original_number, beta - 1, original_number, [alpha * beta | products])
      _ -> all_palindrome_products(original_number, beta - 1, original_number, products)
    end
  end

  defp all_palindrome_products(alpha, beta, original_number, products) do
    case is_palindrome?(alpha * beta) do
      true ->
          all_palindrome_products(alpha - 1, beta, original_number, [alpha * beta | products])
      _ -> all_palindrome_products(alpha - 1, beta, original_number, products)
    end
  end

  defp is_palindrome?(number) do
      number
      |> Integer.to_string()
      |> String.graphemes()
      |> equal_to_reversed()
  end

  defp equal_to_reversed(list) do
    list == Enum.reverse(list)
  end

end
