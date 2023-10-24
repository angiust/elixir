tests = [
    {0, []},
    {1, []},
    {-1, []},
    {2, [2]},
    {3, [3]},
    {4, [2,2]},
    {6, [2,3]},
    {7, [7]},
    {8, [2,2,2]},
]

Enum.each(tests, fn x -> IO.puts Factorization.factorize(elem(x,0)) == elem(x,1) end)
