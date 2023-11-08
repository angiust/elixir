defmodule Numbers do
  def sqrt(n) do
    sqrt(n, n)
  end

  def sqrt(n, try) do
    cond do
      (try*try-n) <= 0.1 -> try
      (try*try-n) > 0.1 -> sqrt(n,(try*try+n)/(2*try))
    end
  end

end
