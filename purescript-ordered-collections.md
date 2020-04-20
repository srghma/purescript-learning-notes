https://github.com/purescript/purescript-ordered-collections/blob/06c1e40849d456d89e898eedf48ba3a94fdd2320/src/Data/Map/Internal.purs#L182-L191

# What is a valid tree?

there should be only one unique length of all hei

L - contains 0 elems
TWO - contains 1 elem
THREE - contains 2 elems
| is a new tree level

when 0 elem inserted - `L`
when 1 elem inserted - `TWO`
when 2 elem inserted - `THREE`
when 3 elem inserted - `TWO | TWO + TWO`
when 4 elem inserted - `TWO | THREE + TWO` or `TWO | TWO + THREE`
when 5 elem inserted - `TWO | THREE + THREE`
when 6 elem inserted - `THREE | THREE + TWO + TWO` or ...
when 7 elem inserted - `THREE | THREE + THREE + TWO` or ...
when 8 elem inserted - `THREE | THREE + THREE + THREE`
when 9 elem inserted - `THREE | THREE + THREE + THREE`


    1
  1   1
2 2   1 1
