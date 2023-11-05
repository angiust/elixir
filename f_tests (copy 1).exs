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

tests_r = [
    0,
    1,
    -1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
]

# Enum.each(tests_r, fn x -> IO.puts Numbers.int_sqr(x) end)
Enum.each(tests, fn x -> IO.puts Numbers.factors(elem(x,0)) == elem(x,1) end)
