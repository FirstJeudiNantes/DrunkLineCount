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
            #
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
              #
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
                #
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
    - passe 4 a 0
    > 5
    [-] passe 5 a 0
  ]
  < 4
]
#
