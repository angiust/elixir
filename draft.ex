defmodule Factorization do
    def factorize(num) do
        factorize( num, [], num-1)
    end

    defp factorize(num, prime_factor, step) when step>1 do
        if rem(num, step)=0 do
            prime_factor= prime_factor ++ [div(num, step)]
            factorize(step, prime_factor, step-1)
        end
        factorize(num, prime_factor, step-1)
    end

    defp factorize( 0, prime_factor, _step) do
        prime_factor = [0]
    end

    defp factorize( 1, prime_factor, _step) do
        prime_factor = [1]
    end

    defp factorize( num, prime_factor, step) when num>1 and step=1 do
        prime_factor= prime_factor ++ [num]
    end

end
