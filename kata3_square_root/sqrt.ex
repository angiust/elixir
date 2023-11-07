defmodule Numbers do
  def sqrt(n) do
    c=ceiling_sqrt(n,1)
    cond do
      (c*c - n) > (n-(c-1)*(c-1)) -> c-1
      true -> c
    end
  end
  defp ceiling_sqrt(n,try) do
    cond do
      try*try > n -> try
      true -> ceiling_sqrt(n, try+1)
    end
  end
end
