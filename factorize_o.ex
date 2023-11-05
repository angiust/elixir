defmodule Numbers do
    def factors(num) do
        cond do
            num < 2 -> []
            num > 1 -> factors(num, num-1)
        end
    end
     defp factors(num, div) do
        cond do
            div == 1 -> [num]
            div > 1 ->
                if rem(num,div) != 0 do
                    factors(num, div-1)
                else
                    [div(num,div)] ++ factors(div,div-1)
                end
        end
    end
end
