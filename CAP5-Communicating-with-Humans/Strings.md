### String
```bash
iex(2)> IO.puts("Look out below!")
Look out below!
:ok
iex(3)> x= "Quote - \ in a string. \n BAckslash, too: \\ . \n"
"Quote -  in a string. \n BAckslash, too: \\ . \n"
iex(4)> IO.puts(x)
Quote -  in a string.
 BAckslash, too: \ .

:ok
iex(5)> "el" <> "ixir"
"elixir"
iex(6)> a="el"
"el"
iex(7)> a <> "ixir"
"elixir"
iex(8)> a = "this"
"this"
iex(9)> b = "The value of a is #{a}."
"The value of a is this."
iex(10)> a = "that"
"that"
iex(11)> b
"The value of a is this."
iex(12)> a
"that"
iex(13)> x = 7 * 5
35
iex(14)> "x is now #{x}"
"x is now 35"
iex(15)> y = {4, 5, 6}
{4, 5, 6}
iex(16)> "y is now #{y}"
** (Protocol.UndefinedError) protocol String.Chars not implemented for {4, 5, 6}
    (elixir) lib/string/chars.ex:3: String.Chars.impl_for!/1
    (elixir) lib/string/chars.ex:17: String.Chars.to_string/1
iex(16)> "y is now #{inspect y}"
"y is now {4, 5, 6}"
iex(17)> "el" == "el"
true
iex(18)> "el" == "ixir"
false
iex(19)> "el" === "el"
true
iex(20)> "el" === "ixir"
false
```


### Multiline Strings
```bash
iex(2)> multi = """
...(2)> This is a multiline
...(2)> string, also called a heredoc.
...(2)> """
"This is a multiline\nstring, also called a heredoc.\n"
iex(3)> IO.puts(multi)
This is a multiline
string, also called a heredoc.

:ok
```

### Unicode
```bash

```

### Character Lists
```bash
iex(4)> x = 'ixir'                                
'ixir'
iex(5)> 'el' ++ 'ixir'
'elixir'
iex(6)> List.to_string('elixir')
"elixir"
iex(7)> String.to_char_list("elixir")
'elixir'
```
### String Sigils
```bash
iex(1)> pass_through = ~S"This is a {#msg}, she said.\n  This is only a {#msg}."
"This is a {#msg}, she said.\\n  This is only a {#msg}."
iex(2)> IO.puts(pass_through)
This is a {#msg}, she said.\n  This is only a {#msg}.
:ok
iex(3)>  ~w/Elixir is great!/
["Elixir", "is", "great!"]
iex(4)> 
```
