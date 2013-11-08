> laisse 0 pour stopper la lecture dans l'autre sens ;)
, lit dans 1
[>+>+<<-]>>[<<+>>-] copie 1 dans 2
< 1
+ (pour gerer EOF)
[ rentre ici si pas EOF
, lit dans n (ex n plus 1 qui est copie pour check EOF)
[>+>+<<-]>>[<<+>>-] copie n dans n plus 1
< n plus 1
+ (pour gerer EOF)
]
<< retourne sur n moins 1 pour pas lire EOF
[.<] lit tout jusqu'a 0 qui est a 0 pour justement s'arreter

