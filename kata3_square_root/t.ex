defmodule Recursion do
  def print_multiple_times(try, n) when n < 1100 do
    if 0 == 0+try do
        IO.puts n
        IO.puts try
        IO.puts([n, 1==2])
    end
        print_multiple_times(try/2, n + 1)
  end

  def print_multiple_times(_try, 1100) do
    :ok
  end
end

Recursion.print_multiple_times(1, 0)
IO.puts :math.pow(2, -1074)
# Hello!
# Hello!
# Hello!
:ok
