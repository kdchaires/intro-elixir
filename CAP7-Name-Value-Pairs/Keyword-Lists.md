### Keyword Lists
```bash
iex(1)> planemo_list = [{:earth, 9.8}, {:moon, 1.6}, {:mars, 3.71}]
[earth: 9.8, moon: 1.6, mars: 3.71]
iex(2)> atomic_weights = [hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
[hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
iex(3)> ages = [david: 59, simon: 40, cathy: 28, simon: 30]
[david: 59, simon: 40, cathy: 28, simon: 30]
iex(4)> Keyword.get(atomic_weights, :hydrogen)
1.008
iex(5)> Keyword.get(atomic_weights, :carbon, 0)
12.011
iex(6)> Keyword.fetch!(atomic_weights, :neon)
** (KeyError) key :neon not found in: [hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
    (elixir) lib/keyword.ex:333: Keyword.fetch!/2
iex(6)> Keyword.get_values(ages, :simon)
[40, 30]
iex(7)> Keyword.has_key?(atomic_weights, :carbon)
true
iex(8)> Keyword.has_key?(atomic_weights, :neon)
false
iex(9)> weights2 = Keyword.put_new(atomic_weights, :helium, 4.0026)
[helium: 4.0026, hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
iex(10)> weights3 = Keyword.put_new(weights2, :helium, -1)
[helium: 4.0026, hydrogen: 1.008, carbon: 12.011, sodium: 22.99]
iex(11)> ages2 = Keyword.put(ages, :chung, 19)
[chung: 19, david: 59, simon: 40, cathy: 28, simon: 30]
iex(12)> ages3 = Keyword.put(ages2, :simon, 22)
[simon: 22, chung: 19, david: 59, cathy: 28]
iex(13)> ages2
[chung: 19, david: 59, simon: 40, cathy: 28, simon: 30]
iex(14)> ages4 = Keyword.delete(ages2, :simon)
[chung: 19, david: 59, cathy: 28]
```
