DrunkLineCount
==============

Worst -- and most elegant -- ways to count line number of a file.

greg
----

The clue of this solution is to wrap lines several times reducing the lenght of lines each time. By adding new `\n`, we add noise to the file. The goal is to detect when the `signal / noise` ratio (SNR) varies the most to determine the average lenght of lines in a sample. Extrapoling this information leads to an estimation of the total line number in a file. 

This program shows estimations "near" as 30% to 10% on files > 1000 lines.

marco
-----

Parce que greg veut un README.

Read the fucking code !

Pour le one-liner perl, juste exécute le

$|=4096: lire par bloc de 4k

s/\n/fonction()/eg: remplace Tous les \n (/g) par le résultat de la fonction (/e dit que la partie de droite est du code exécutable)


Pour le psql

\lo_import :file -_> Charge le fichier pointé par la variable file (passée par le .sh) dans un LOB

\set myoid :LASTOID -> stocke dans la variable myoid le dernier OID retourné par le serveur (par lo_import)

\timing -> affiche les temps d'exécution

-- Fastoche: compter le nombre d'enregistrements retoruné par regexp_split_to_table, splitté par \n
-- celle ci reçoit ses données de convert_from (conversion d'une donnée binaire en chaîne, ici par utf8)
-- qui reçoit ses données d'un loread d'1Go d'un coup
-- sur un descripteur de LOB ouvert par lo_open, en lecture (x'40000')
select count(*) from (select regexp_split_to_table(convert_from(loread(lo_open(:myoid,x'40000'::int),1073741800),'utf8'),E'\\n')) as tmp;

\timing -> désactive l'affichage des temps d'exécution
\lo_unlink :myoid -> détruit le LOB

sim51
----

The java solution : the beauty of this code is to have an infinity loop that raise an exception with the number of line of the file 

The netcat solution : we start a netcat server that count the number of instruction. When we push it a file, every line is consider as an instruction, so we have the number of line of the file
