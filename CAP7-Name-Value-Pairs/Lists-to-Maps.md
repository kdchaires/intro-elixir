### Lists to Maps

#### Creating Maps
```bash
iex(1)> new_map = %{}
%{}
iex(2)> planemo_map = %{:earth => 9.8, :moon => 1.6, :mars => 3.71}
%{earth: 9.8, mars: 3.71, moon: 1.6}
iex(3)> number_map=%{2 => "two", 3 => "three"}
%{2 => "two", 3 => "three"}
iex(4)> planemo_map_alt = %{earth: 9.8, moon: 1.6, mars: 3.71}
%{earth: 9.8, mars: 3.71, moon: 1.6}
```

### Updating Maps
```bash
iex(5)> altered_planemo_map = %{planemo_map | earth: 12}
%{earth: 12, mars: 3.71, moon: 1.6}
iex(6)> altered_planemo_map = %{planemo_map | :earth => 12}
%{earth: 12, mars: 3.71, moon: 1.6}
iex(7)> extended_planemo_map = Dict.put_new( planemo_map, :jupiter, 23.1)
%{earth: 9.8, jupiter: 23.1, mars: 3.71, moon: 1.6}
iex(8)>     %{earth: 9.8, jupiter: 23.1, mars: 3.71, moon: 1.6}
%{earth: 9.8, jupiter: 23.1, mars: 3.71, moon: 1.6}
```

### Reading Maps
```bash
iex(9)> %{earth: earth_gravity} = planemo_map
%{earth: 9.8, mars: 3.71, moon: 1.6}
iex(10)> earth_gravity
9.8
```
