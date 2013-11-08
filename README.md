DrunkLineCount
==============

Worst -- and most elegant -- ways to count line number of a file.

greg
----

The clue of this solution is to wrap lines several times reducing the lenght of lines each time. By adding new `\n`, we add noise to the file. The goal is to detect when the `signal / noise` ratio (SNR) varies the most to determine the average lenght of lines in a sample. Extrapoling this information leads to an estimation of the total line number in a file. 

This program shows estimations "near" as 30% to 10% on files > 1000 lines.
