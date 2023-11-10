defmodule Recursion do
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg/2)
    print_multiple_times(msg/2, n - 1)
  end

  def print_multiple_times(msg, 0) do
    IO.puts(1)
    IO.puts(1+msg)
    IO.puts(1.0000000000000001)
    IO.puts(1.0000000000000002)
  end
end

Recursion.print_multiple_times(1, 52)
