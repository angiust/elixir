tests = [
    {0, []},
    {1, []},
    {-1, []},
    {2, [2]},
    {3, [3]},
    {4, [2,2]},
    {5, [5]},
    {6, [2,3]},
    {7, [7]},
    {8, [2,2,2]},
    {9, [3,3]}
]

Enum.each(tests, fn x -> IO.puts Numbers.factors(elem(x,0)) == elem(x,1) end)
