defmodule Numbers do
  def sqrt(n) do
    sqrt(n, 1)
  end
  defp sqrt(n,try) do
    cond do
      try*try > n -> try
      true -> sqrt(n, try+1)
    end
  end
end
