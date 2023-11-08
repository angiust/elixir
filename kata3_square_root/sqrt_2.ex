defmodule Numbers do
  def sqrt(n) do
    c=ceil_sqrt(n,1)
    cond do
      (c*c - n) > (n-(c-1)*(c-1)) -> c-1
      true -> c
    end
  end
  defp ceil_sqrt(n,try) do
    cond do
      try*try > n -> try
      true -> ceil_sqrt(n, try+1)
    end
  end
  def sqrt(n,precision) do
    sqrt(n*pow(10, 2*precision))/pow(10, precision)
  end
  defp pow(a, n) do
    cond do
      n == 0 -> 1
      n == 1 -> a
      true -> a*pow(a, n-1)
    end
  end
end
