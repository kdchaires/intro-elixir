### Lists of Tuples with Multiple Keys
```bash
iex(1)> atomic_info = [{:hydrogen, :H, 1008}, {:carbon, :C, 12.011},
...(1)> {:sodium, Na, 22.99}]
[{:hydrogen, :H, 1008}, {:carbon, :C, 12.011}, {:sodium, Na, 22.99}]
iex(2)> atomic_info = [{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011},
...(2)> {:sodium, Na, 22.99}]
[{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, Na, 22.99}]
iex(3)> List.keyfind(atomic_info, :H, 1)
{:hydrogen, :H, 1.008}
iex(4)> List.keyfind(atomic_info, :carbon, 0)
{:carbon, :C, 12.011}
iex(5)> List.keyfind(atomic_info, :F, 1)
nil
iex(6)> List.keyfind(atomic_info, :fluorine, 0, {})
{}
iex(7)> List.keymember?(atomic_info, :Na, 1)
false
iex(8)> List.keymember?(atomic_info, :boron, 0)
false
iex(9)> atomic_info2 = List.keystore(atomic_info, :boron, 0,
...(9)> {:boron, :B, 10.081})
[{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, Na, 22.99},
 {:boron, :B, 10.081}]
iex(10)> atomic_info3 = List.keyreplace(atomic_info2, :B, 1,
...(10)> {:boron, :B, 10.81})
[{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, Na, 22.99},
 {:boron, :B, 10.81}]
iex(11)> atomic_info4 = List.keydelete(atomic_info3, :fluorine, 0)
[{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, Na, 22.99},
 {:boron, :B, 10.81}]
iex(12)> atomic_info5 = List.keydelete(atomic_info3, :carbon, 0)
[{:hydrogen, :H, 1.008}, {:sodium, Na, 22.99}, {:boron, :B, 10.81}]
iex(13)> atomic_info3 = List.keyreplace(atomic_info2, :B, 1, {:zinc, :Zn, 65.38})
[{:hydrogen, :H, 1.008}, {:carbon, :C, 12.011}, {:sodium, Na, 22.99},
 {:zinc, :Zn, 65.38}]
```
