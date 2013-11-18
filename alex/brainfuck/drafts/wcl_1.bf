>>> 0 a 3 : 4 octets pour compter
>+ 4 : initialise a 1 pour rentrer dans la boucle
[
  , 4 : lit un char
  + 4 incremente de 1
  >++++++++++ 5 : initialise a 10 pour \n
  >+ 6 : bit de test1
  >+ 7 : bit de test2
  <<< 4
  [ si on rentre pas ici c'est que EOF
    - decremente 4
    >> 6 qui est a 1
    [
      < 5 qui est a 10
      [
        - decremente 5
        <- decremente 4
        > 5
      ] 5 est a 0
      > 6 qui est a 1
      [
        - passe 6 a 0
        << 4
        [ on rentre ici donc 4 n'est pas un \n
          >>> 7
          - passe 7 a 0
          <<< 4
          [-] passe 4 a 0
        ]
        >>> 7
        [ on rentre ici car 7 est a 1 donc 4 est a 0
          - 7 a 0
          <<<< 3
          + incremente
          [>>>>>+>+<<<<<<-]>>>>>>[<<<<<<->>>>>>+] copie 3 dans 8
          + passe 9 a 1
          < 8
          [ si 8 rien a faire sur 2
            [-] remet 8 a 0
            >- passe 9 a 0
            < 8
          ]
          > 9
          [
            - passe 9 a 0
            < 8
            [-] remet 8 a 0
            <<<<<< 2
            + incremente
            [>>>>>>+>+<<<<<<<-]>>>>>>>[<<<<<<<->>>>>>>+] copie 2 dans 8
            + passe 9 a 1
            < 8
            [ si 8 rien a faire sur 1
              [-] remet 8 a 0
              >- passe 9 a 0
              < 8
            ]
            > 9
            [
              - passe 9 a 0
              < 8
              [-] remet 8 a 0
              <<<<<<< 1
              + incremente
              [>>>>>>>+>+<<<<<<<<-]>>>>>>>>[<<<<<<<<->>>>>>>>+] copie 1 dans 8
              + passe 9 a 1
              < 8
              [ si 8 rien a faire sur 1
                [-] remet 8 a 0
                >- passe 9 a 0
                < 8
              ]
              > 9
              [
                - passe 9 a 0
                < 8
                [-] remet 8 a 0
                <<<<<<<< 0
                + incremente
                >>>>>>>>> 9
              ]
            ]
          ]
          << 7
        ]
        < 6
      ]
    ]
    << 4
  ]
  + passe 4 a 1
  > 5
  [ si 5 pas a 0 alors EOF
    < 4
    [-] passe 4 a 0
    > 5
    [-] passe 5 a 0
    > 6
    [-] passe 6 a 0
    > 7
    [-] passe 7 a 0
    << 5
  ]
  < 4
]

< 3

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

<<<<<<<< 2
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

<<<<<<<< 2
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

<<<<<<<< 2
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
