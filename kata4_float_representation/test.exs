tests = [
    {:math.pi, 2, "3.14"},
    {:math.pi, 3, "3.142"},
    {:math.pi, 4, "3.1416"},
    {:math.pi, 5, "3.14159"}
]

Enum.each(tests, fn x -> IO.puts Float.round( elem(x,0), elem(x,1)) end)
