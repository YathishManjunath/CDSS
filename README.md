# CDSS LAB DSU
1a. Program to count the number, words, spaces and lines in a given input file.

1b. Program to recognize and count the number of identifiers in a file.

2a. Programs to count the numbers of comments lines in a given C program. Also eliminate them and copy the resulting program into separate file.

2b. Program to recognize whether a given sentence is simple or compound.

3a. Program to count number of:
i.+ve and -ve integers
ii. +ve and -ve fractions

3b. Program to count the number of “scanf” and “printf” statements in a C program. Replace them with “readf” and “writef” statements respectively.

4. Program to evaluate arithmetic expression involving operators +, -, *, /.

5. Program to recognize a valid variable which starts with a letter, followed by any number of letter or digits.

6. Program to recognize the strings using the grammar (anbn; n>=0).

7. C program to implement Pass1 of Assembler.

8. C program to implement Absolute loader.

9. C program to implement the FIRST in context free grammar.

10. C program to implement Shift Reduce Parser for the given grammar:
    i.  E → E + E
    ii. E → E * E
    iii.E → (E)
    iv. E → id


lex executing commands:
    -> lex filename.l
    -> cc lex.yy.c -ll
    -> ./a.out

yacc executing commands:
    -> lex filename.l
    -> yacc -d filename.y
    -> cc lex.yy.c y.tab.c -ll
    -> ./a.out
