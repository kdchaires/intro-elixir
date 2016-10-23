### Simple Higher-Order Functions
```bash
iex(5)> my_function = fn(value) -> 20 * value end
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(6)> Hof.tripler(6, my_function)
360
iex(7)> Hof.tripler(6, fn(value) -> 20 * value end)
360
iex(8)> ampersand_function = &(20 * &1)
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(9)> Hof.tripler(6, ampersand_function)
360
iex(10)> Hof.tripler(6, &(20 * &1))
360
iex(11)> x = 20
20
iex(12)> my_function2 = fn(value) -> x * value end
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(13)> x = 0
0
iex(14)> my_function2.(6)
```

### Creating New Lists with Higher-Order Functions
```bash
iex(15)> print = fn(value) -> IO.puts(" #{value}") end
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(16)> list = [1,2,4,8,16,32]
[1, 2, 4, 8, 16, 32]
iex(17)> Enum.each(list, print)
 1
 2
 4
 8
 16
 32
:ok
```

### Running List Values Through a Function
```bash
iex(18)> square = &(&1 * &1)
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(19)> Enum.map(list, square)
[1, 4, 16, 64, 256, 1024]
iex(20)> Enum.map(1..3, square)
[1, 4, 9]
iex(21)> Enum.map(-2..2, square)
[4, 1, 0, 1, 4]
iex(22)> Enum.map(?a..?d, square)
[9409, 9604, 9801, 10000]
iex(23)> for value <- list, do: value * value
[1, 4, 16, 64, 256, 1024]
```

### Filtering List Values
```bash
iex(24)> four_bits = fn(value) -> (value >= 0) and (value < 16) end
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(25)> Enum.filter(list, four_bits)
[1, 2, 4, 8]
iex(26)> for value <- list, value >= 0, value < 16, do: value
[1, 2, 4, 8]
```

## Beyond List Comprehensions

### Testing Lists
```bash
iex(28)> is_int = fn(value) -> is_integer(value) end
#Function<6.52032458/1 in :erl_eval.expr/5>  
iex(29)> Enum.all?(list, is_int)
true
iex(30)> Enum.any?(list, is_int)
true
iex(31)> compare = &(&1 > 10)
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(32)> Enum.all?(list, compare)
false
iex(33)>
nil
iex(34)> Enum.any?(list, compare)
true
```

### Splitting Lists
```bash
iex(36)> Enum.partition(list, compare)
{[16, 32], [1, 2, 4, 8]}
iex(37)> test = &(&1 < 4)
#Function<6.52032458/1 in :erl_eval.expr/5>
iex(38)> Enum.drop_while([1,2,4,8,4,2,1], test)
[4, 8, 4, 2, 1]
iex(39)> Enum.take_while([1,2,4,8,4,2,1], test)
[1, 2]
```

### Folding Lists
```bash
iex(41)> divide = fn(value, accumulator) -> value / accumulator end
#Function<12.52032458/2 in :erl_eval.expr/5>
iex(42)> divide = fn(value, accumulator) -> value / accumulator end
#Function<12.52032458/2 in :erl_eval.expr/5>
iex(43)> 1/2/4/8/16/32
3.0517578125e-5
iex(44)> List.foldl(list, 1, divide)
8.0
iex(45)> 32/16/8/4/2/1
0.03125
iex(46)> List.foldr(list, 1, divide)
0.125
```
