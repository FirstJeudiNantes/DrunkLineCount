------- set 0 a 249 par exemple

[>+>+<<-]>>[<<+>>-] copy 0 to 1
< 1
[
  > 2
  ++++++++++ 10 dans 2
  [
    -<- substract 1 to divisor(2) and dividend(1)
    [>>+>+<<<-]>>>[<<<+>>>-] copy dividend(1) to 3
    + set 4
    <[>[-]<[-]] if 3 clear 4 and 3
    >[<<[>>>+<<<-]>>[-]] if 4 move remaining divisor(2) to 5 and clear 4
    <<
  ]
  >>> remainder(5)
  [>>+>+<<<-]>>>[<<<+>>>-] copy 5 to 7
  + set 8
  <[>[-]<[-]] if 7 clear 8 and 7
  >[<<+>>[-]] if 8 increments quotient(6) and clear 8
  <<<<<<< 1
]
>>>> remaining divisor(5)
>>++++++++++ 
<<[
[->>-<<] subtract remaining divisor(5) from 10
>>
[++++++++++++++++++++++++++++++++++++++++++++++++.[-]] print remainder(5) and clear it
<<]
>>[[-] if 7 clear 7 and print 0
++++++++++++++++++++++++++++++++++++++++++++++++.[-] print 0
]

< quotient(6)
[
  > 7
  ++++++++++ 10 dans 7
  [
    -<- substract 1 to divisor(7) and dividend(6)
    [>>+>+<<<-]>>>[<<<+>>>-] copy dividend(6) to 8
    + set 9
    <[>[-]<[-]] if 8 clear 9 and 8
    >[<<[>>>+<<<-]>>[-]] if 9 move remaining divisor(7) to 10 and clear 9
    <<
  ]
  >>> remainder(10)
  [>>+>+<<<-]>>>[<<<+>>>-] copy 10 to 12
  + set 13
  <[>[-]<[-]] if 12 clear 13 and 12
  >[<<+>>[-]] if 13 increments quotient(11) and clear 13
  <<<<<<< 6
]
>>>> remaining divisor(10)
>>++++++++++ 
<<[
[->>-<<] subtract remaining divisor(10) from 10
>>
[++++++++++++++++++++++++++++++++++++++++++++++++.[-]] print remainder(10) and clear it
<<]
>>[[-]
++++++++++++++++++++++++++++++++++++++++++++++++.[-]
]

< quotient(11)
[
  > 12
  ++++++++++ 10 dans 12
  [
    -<- substract 1 to divisor(12) and dividend(11)
    [>>+>+<<<-]>>>[<<<+>>>-] copy dividend(11) to 13
    + set 14
    <[>[-]<[-]] if 13 clear 14 and 13
    >[<<[>>>+<<<-]>>[-]] if 14 move remaining divisor(12) to 15 and clear 14
    <<
  ]
  >>> remaining divisor(15)
  [>>+>+<<<-]>>>[<<<+>>>-] copy 15 to 17
  + set 18
  <[>[-]<[-]] if 17 clear 18 and 17
  >[<<+>>[-]] if 18 increments quotient(16) and clear 18
  <<<<<<< 11
]
>>>> remaining divisor(15)
>>++++++++++ 
<<[
[->>-<<] subtract remaining divisor(15) from 10
>>
[++++++++++++++++++++++++++++++++++++++++++++++++.[-]] print remainder(15) and clear it
]
>>[[-]
++++++++++++++++++++++++++++++++++++++++++++++++.[-]
]
