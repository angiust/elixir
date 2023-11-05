defmodule Numbers do
    def factors(n) do
        if n < 2 do
            []
        else
            factors(n, 2)
        end
    end
    defp factors(n, d) do
        cond do
            d*d > n -> [n]
            rem(n,d) == 0 -> [d] ++ factors(div(n,d), d)
            d==2 -> factors(n, d+1)
            true -> factors(n, d+2)
        end
    end
end
