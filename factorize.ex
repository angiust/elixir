defmodule Numbers do
    def factors(n) do
        if n < 2 do
            []
        else
            factors(n, 2, int_sqr(n))
        end
    end
    defp factors(n, d, rad) do
        cond do
            d >= rad -> [n]
            rem(n,d) == 0 -> [d] ++ factors(div(n,d), d, int_sqr(div(n,d)))
            d==2 -> factors(n, d+1, rad)
            true -> factors(n, d+2, rad)
        end
    end
    def int_sqr(n) do
        int_sqr(n, 1)
    end
    defp int_sqr(n,try) do
        cond do
            try*try > n -> try
            true -> int_sqr(n, try+1)
        end
    end
end
