tests = [
    {0, 0},
    {1, 1},
    {2, 1},
    {3, 2},
    {4, 2},
    {5, 2},
    {6, 2},
    {7, 3},
    {8, 3},
    {9, 3},
    {101, 10},
    {10001, 100},
    {3487289, 1867} 
]

Enum.each(tests, fn x -> IO.puts Numbers.sqrt(elem(x,0),1) end)
Enum.each(tests, fn x -> IO.puts Numbers.sqrt(elem(x,0)) == elem(x,1) end)
