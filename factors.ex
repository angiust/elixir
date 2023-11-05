defmodule Numbers do
    def factors(n) do
        if n < 2 do
            []
        else
            factors(n, 2, :math.sqrt(n))
        end
    end
    defp factors(n, d, rad) do
        cond do
            d > rad -> [n]
            rem(n,d) == 0 -> [d] ++ factors(div(n,d), d, :math.sqrt(div(n,d)))
            d==2 -> factors(n, d+1, rad)
            true -> factors(n, d+2, rad)
        end
    end
end
