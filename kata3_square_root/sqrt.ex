defmodule Numbers do

  def sqrt(n, tollerance \\ 0.01) do
    sqrt(n, n, tollerance)
  end

  defp sqrt(n, try, tollerance) do
    cond do
      (try*try-n) <= tollerance -> try
      (try*try-n) > tollerance -> sqrt(n,(try*try+n)/(2*try), tollerance)
    end
  end

end
