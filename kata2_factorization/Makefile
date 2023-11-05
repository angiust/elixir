all: test

test: f_tests.exs factorize
	elixir $<

factorize: factorize.ex
	elixirc $<
