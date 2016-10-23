### Logging Progress and Failure
```bash
iex(12)> require Logger
Logger
iex(13)> counter=255
255
iex(14)> Logger.info("About to begin test")

19:27:41.873 [info]  About to begin test
:ok
iex(15)> Logger.debug("Current value of counter is #{counter}")

19:28:17.870 [debug] Current value of counter is 255
:ok
iex(16)> Logger.warn("Connection lost; will retry.")

19:28:44.382 [warn]  Connection lost; will retry.
:ok
iex(17)> Logger.error("Unable to read database.")

19:28:55.245 [error] Unable to read database.
:ok
```

### Watching Function Calls
```bash
iex(8)> c("ex4-11-factorial-up.ex")
warning: redefining module Fact (current version loaded from Elixir.Fact.beam)
  ex4-11-factorial-up.ex:2

[Fact]
iex(9)> :dbg.tracer()
{:ok, #PID<0.101.0>}
iex(10)> :dbg.p(:all, :c)
{:ok, [{:matched, :nonode@nohost, 45}]}
iex(11)> :dbg.tpl(Fact, :factorial, [])
{:ok, [{:matched, :nonode@nohost, 2}]}
iex(12)> Fact.factorial(4)
(<0.80.0>) call 'Elixir.Fact':factorial(4)
(<0.80.0>) call 'Elixir.Fact':factorial(1,4,1)
1 yields 1.
(<0.80.0>) call 'Elixir.Fact':factorial(2,4,1)
2 yields 2.
(<0.80.0>) call 'Elixir.Fact':factorial(3,4,2)
3 yields 6.
(<0.80.0>) call 'Elixir.Fact':factorial(4,4,6)
4 yields 24.
finished!
(<0.80.0>) call 'Elixir.Fact':factorial(5,4,24)
24
```
