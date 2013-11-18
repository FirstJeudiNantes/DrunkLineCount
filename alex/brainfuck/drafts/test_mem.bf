test gestion de memoire
>>>> 4
+ 4 a 1
[
  ,
  +
  >+ 5 a 1
  < 4
  [ rentre pas ici si EOF
    >- passe 5 a 0
    < 4
    - repasse 4 a sa valeur
    fais tourner la mem
    < 3
    [
      < 2
      [-] passe 2 a 0
      > 3
      [
        -
        <+ incremente 2
        > 3
      ]
    ]
    > 4
    [
      -
      <+ incremente 3
      > 4
    ]
    #
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
