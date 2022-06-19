# Matis TÉCHER 


# Irregular_sudoku
This is a final work for the subject Knowledge Representation.

I choose to solve an irregular sudoku.

***What is a sudoku?***

Sudoku is a logic-based, combinatorial number-placement puzzle. The aim of this game is to fill the 9x9 grid with as conditions : each rows, each coloumns and each 3x3 subgrid (also called 'blocks') contains all the digit from 1 to 9. The grid is partially filled with some numbers to help us finding the logical result. The sudoku has only one solution.

*example :*

![alt text](./example2.png)

***How to solve this problem?***

I choosed to use "SWI-Prolog" which is a free Prolog environment and a logic programming language associated with artificial intelligence and computational linguistics. To understand how to code in this language you can use "The Power of Prolog"(https://www.metalevel.at/prolog). This is an online book of Markus Triska. 

***reasoning of the code sudokuexam.pl***

First, I needed to use a library named clpfd by using the command ":- use_module(library(clpfd))" that will allow us to use the all_distinct command for example which is an important command in the case of the sudoku.

