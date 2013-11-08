affiche en hexa la valeur d'un octet mais a l'envers
et en supprimant la data

tester en lancant : verif_print_byte_in_hexa_bf_sh

[
  > 2
  ++++++++++++++++ 16 dans 2
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
>>++++++++++++++++ 7
<<[ if 5
[->>-<<] subtract remaining divisor(5) from 16 in 7
>> 7
[>+>+<<-]>>[<<+>>-] copy 7 to 8
< 8
[>
++++++++++ set 10 in 9
subtract @9 to @8
<[->-
[>+>+<<-]>>[<<+>>-] copy @9 to @10
+ set @11
<[>[-]<[-]] if @10 clear @11 and @10
>[[-]<<<[-]>>>] if @11 clear @11 and @8
<<<]
]
>[[-]<<++++++++++++++++++++++++++++++++++++++++++++++++.[-]>>] if @9 clear @9 print @7 from 48(0) and clear @7
<<[+++++++++++++++++++++++++++++++++++++++++++++++++++++++.[-]] if @7 print from 55(7) and clears it
<<]
>>[[-]++++++++++++++++++++++++++++++++++++++++++++++++.[-]]

< quotient(6)
[>+>+<<-]>>[<<+>>-] copy @6 to @7
+ set @8
< @7
[
>[-]clear @8
++++++++++ set 10 in @8
subtract @8 to @7
<[->-
[>+>+<<-]>>[<<+>>-] copy @8 to @9
+ set @10
<[>[-]<[-]] if @9 clear @10 and @9
>[[-]<<<[-]>>>] if @10 clear @10 and @7
<<<]
]
>[[-]<<++++++++++++++++++++++++++++++++++++++++++++++++.[-]>>] if @8 clear @8 print @6 from 48(0) and clear @6
<<[+++++++++++++++++++++++++++++++++++++++++++++++++++++++.[-]] if @6 print @6 from 55(7) and clears it
>>[
[-]++++++++++++++++++++++++++++++++++++++++++++++++.[-]
]
