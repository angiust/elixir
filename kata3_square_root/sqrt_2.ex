defmodule Numbers do
  def sqrt(n, tollerance \\ 0.01) do
    sqrt(n, 0, n, tollerance)
  end

  defp sqrt(n, i, f, tollerance) do
    try = (i+f)/2
    c = try*try
    cond do
      (c-n) <= tollerance and n-c <= tollerance -> try
      c > n -> sqrt(n, i, try, tollerance)
      c < n -> sqrt(n, try,f , tollerance)
    end
  end

end
