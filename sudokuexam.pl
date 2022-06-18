:- use_module(library(clpfd)). %we use the clpfd library that contains all the command we need by using lists


sudoku(Matrix) :- length(Matrix, 9), %create Matrix, a list with 9 elements 
				maplist(same_length(Matrix), Matrix), %now Matrix is a matrix of 9 lines and 9 coloums 
				append(Matrix, Vars), Vars ins 1..9, %all the elements of matrix are between 1 and 9
				maplist(all_distinct, Matrix), %all the elements in the lines have to be distinct
				transpose(Matrix, TransMatrix), %the line of Matrix became the coloums
				maplist(all_distinct, TransMatrix),%all the elements in the coloums (that now correspond to the lines) have to be distinct
				Matrix = [L1,L2,L3,L4,L5,L6,L7,L8,L9], %Matrix is defined by 9 lines
				L1 = [E11, E12, E13, E14, E15, E16, E17, E18, E19], %there I defined each line with 9 elements corresponding to the lines and coloums position (E45 correspond to the element line 4 and coloums 5
				L2 = [E21, E22, E23, E24, E25, E26, E27, E28, E29],
				L3 = [E31, E32, E33, E34, E35, E36, E37, E38, E39],
				L4 = [E41, E42, E43, E44, E45, E46, E47, E48, E49],
				L5 = [E51, E52, E53, E54, E55, E56, E57, E58, E59],
				L6 = [E61, E62, E63, E64, E65, E66, E67, E68, E69],
				L7 = [E71, E72, E73, E74, E75, E76, E77, E78, E79],
				L8 = [E81, E82, E83, E84, E85, E86, E87, E88, E89],
				L9 = [E91, E92, E93, E94, E95, E96, E97, E98, E99],
				
				all_distinct([E11,E12,E13,E14,E15,E25,E21,E31,E16]), %and there the elements of each block that composed the irregular sudoku are all distinct
				all_distinct([E17,E18,E19,E29,E39,E49,E59,E69,E58]),
				all_distinct([E79,E89,E99,E98,E97,E96,E95,E94,E85]),
				all_distinct([E91,E92,E93,E81,E71,E61,E51,E41,E52]),
				all_distinct([E53,E54,E55,E56,E57,E35,E45,E65,E75]),
				all_distinct([E22,E23,E24,E32,E33,E34,E42,E43,E44]),
				all_distinct([E62,E63,E64,E72,E73,E74,E82,E83,E84]),
				all_distinct([E26,E27,E28,E36,E37,E38,E46,E47,E48]),
				all_distinct([E66,E67,E68,E76,E77,E78,E86,E87,E88]).

%this is the irregular sudoku that we want to slove (same as in the picture)				
sudoku1([                          
		[_,_,_,3,_,_,1,_,_],
		[_,3,4,_,_,_,_,8,_],
		[_,6,9,_,_,_,7,_,_],
		[3,_,_,7,_,6,_,_,_],
		[_,_,_,_,5,_,_,_,_],
		[_,_,_,4,_,7,_,_,9],
		[_,_,3,_,_,_,9,6,_],
		[_,2,_,_,_,_,5,1,_],
		[1,_,_,_,_,5,_,_,_]
		]).
		
/*
	to get the solution we have to write in prolog :
	sudoku1(S), sudoku(S),   maplist(label, S), maplist(portray_clause, S).
*/