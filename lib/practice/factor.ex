defmodule Practice.Factor do
  def factor(expr) do 
    factor(expr, [], 2)
  end

  def factor(expr, primes, div) when expr >= div do
    if (isPrime(div) && (rem(expr, div) == 0)) do
      newprimes = primes ++ [div]
      factor(round(expr/div), newprimes, 2)
    else 
      factor(expr, primes, div + 1)
    end
  end

  def factor(expr, primes, div) do 
    primes
  end

  def isPrime(expr) do
    isPrime(expr, 2, true, :math.sqrt(expr))
  end

  defp isPrime(expr, i, acc, s) when i <= s do 
    isPrime(expr, i + 1, acc && !(rem(expr, i) == 0), s)
  end

  defp isPrime(expr, i, acc, s) when i > s do
    acc
  end
end
