defmodule Practice.Factor do
  def factor(expr) do
    isPrime(expr)
  end

  def isPrime(x) do
    i = 1
    acc = (x >= 1)
      unless (i > :math.sqrt(x)) do
        # i = i + 1
        # acc = acc && !(rem(x, i) == 0)
        acc = false
      end
    acc
  end
end
