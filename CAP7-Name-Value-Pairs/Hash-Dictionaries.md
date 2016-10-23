### Hash Dictionaries
```bash
iex(1)> planemo_hash = Enum.into([earth: 9.8, moon: 1.6, mars: 3.71],
...(1)>     HashDict.new())
#HashDict<[moon: 1.6, mars: 3.71, earth: 9.8]>
iex(2)> HashDict.has_key?(planemo_hash, :moon)
true
iex(3)> HashDict.has_key?(planemo_hash, :jupiter)
false
iex(4)> HashDict.get(planemo_hash, :jupiter)
nil
iex(5)> HashDict.get(planemo_hash, :jupiter, 0)
0
iex(6)> planemo_hash2 = HashDict.put_new(planemo_hash, :jupiter, 99.9)
#HashDict<[moon: 1.6, mars: 3.71, jupiter: 99.9, earth: 9.8]>
iex(7)> planemo_hash3 = HashDict.put_new(planemo_hash2, :jupiter, 23.1)
#HashDict<[moon: 1.6, mars: 3.71, jupiter: 99.9, earth: 9.8]>
iex(8)> planemo_hash4 = HashDict.put(planemo_hash3, :jupiter, 23.1)
#HashDict<[moon: 1.6, mars: 3.71, jupiter: 23.1, earth: 9.8]>
iex(9)>  planemo_hash5 = HashDict.delete(planemo_hash4,:saturn)
#HashDict<[moon: 1.6, mars: 3.71, jupiter: 23.1, earth: 9.8]>
iex(10)> planemo_hash6 = HashDict.delete(planemo_hash4, :jupiter)
#HashDict<[moon: 1.6, mars: 3.71, earth: 9.8]>
```
