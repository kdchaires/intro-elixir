# Introduction

## Installing Elixir
<http://elixir-lang.org>

### Check your installed version:
```bash
elixir -v
```

### Firing It Up
```bash
iex
```

### Quit
Ctrl+C
```bash
iex(1)>
    BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
           (v)ersion (k)ill (D)b-tables (d)istribution
$a
```

### Help
```bash
iex(1)> h()
```
### Moving Through Files
```bash
iex(1)> pwd()
    /Users/elixir/code/
    :ok
```
```bash
 iex(2)> cd ".."
    /Users/elixir
    :ok
    iex(3)> cd "code"
    /Users/elixir/code
    :ok
```

### Mathematical expressions
```bash
Interactive Elixir (0.13.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 2+2
4
iex(2)> 27-14
13
iex(3)> 35*42023943
1470838005
iex(4)> 4*(3+5)
32
iex(5)> 200/15
13.333333333333334
iex(6)> div(200,15)
13
iex(7)> rem(200,15)
5
iex(8)> rem 200,15
5
iex(9)> round 200/15
13
iex(10)> 4*v(9)
52
iex(11)> :math.sin(0)
0.0
iex(12)> :math.cos(:math.pi)
-1.0
iex(13)> :math.cos(2 * :math.pi)
1.0
iex(14)> :math.pow(2,16)
65536.0
iex(15)> :math.pow(2,2)
4.0
iex(16)> :math.pow(2,3)
8.0
iex(17)> 3487598347598347598437583475893475843749245.0
3.4875983475983474e42
iex(18)> 2343243.345435893850234543339545
2343243.3454358936
iex(19)> 0.0000000000000000000000000000023432432432432234232324
2.3432432432432235e-30
iex(20)> .0000000000000000000000000000023432432432432234232324
** (SyntaxError) iex:20: syntax error before: '.'

iex(20)> 2.923e127
2.923e127
iex(21)> 7.6345435e-231
7.6345435e-231
iex(22)> :math.sin(0)
0.0
iex(23)> :math.sin(:math.pi)
1.2246467991473532e-16
iex(24)> 0b01010111
87
iex(25)> 0b010     
2
iex(26)> 0b000
0
iex(27)> 0b001
1
iex(28)> 0b011
3
iex(29)> 0b0111
7
iex(30)> 0b01111
15
iex(31)> 0b1111
15
iex(32)> 0xcafe
51966
iex(33)> -1234
-1234
iex(34)> -0xcafe
-51966
iex(35)> -2.045234324e6
-2045234.324
iex(36)> n=1
1
iex(37)> n
1
iex(38)> n=2
2
iex(39)> n=n+1
3
iex(40)> 2*m=3*4
** (CompileError) iex:40: illegal pattern

iex(40)> distance = 20; gravity=9.8
9.8
iex(41)> distance
20
iex(42)> gravity
9.8
iex(43)>  
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
```    
