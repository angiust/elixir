defmodule Numbers do
  def sqrt(n) do
    sqrt(n, n, 0.1)
  end

  def sqrt(n, try, tollerance) do
    cond do
      (try*try-n) <= tollerance -> try
      (try*try-n) > tollerance -> sqrt(n,(try*try+n)/(2*try), tollerance)
    end
  end

end
