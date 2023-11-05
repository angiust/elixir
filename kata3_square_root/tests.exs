tests = [
  {{}, 0, false},
  {{1}, 0, false},
  {{1}, 1, true},
  {{1,2}, 1, true},
  {{1,2}, 2, true},
  {{1,3}, 2, false},
  {{-1,5,13}, 4, false},
  {{-1,5,13}, 13, true},
  {{5,13,21,34}, 21, true},
]

Enum.each(tests, fn x -> IO.puts Binary.search(elem(x,0), elem(x,1)) == elem(x,2) end)
