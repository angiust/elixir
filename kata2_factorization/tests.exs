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
    {10, [2,5]},
    {30, [2,3,5]},
    {2643679037 , [34183, 77339]}
]

Enum.each(tests, fn x -> IO.puts Factors.factors(elem(x,0)) == elem(x,1) end)
