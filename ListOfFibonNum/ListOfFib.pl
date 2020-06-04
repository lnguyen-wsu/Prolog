
% Luan Nguyen - Y383P299
% HW5 : FIND THE LIST OF FIBONACCI NUMBERS

%helper function - customize  
% for length
length_check([],0).
length_check([_|T],N):- length_check(T,Nt),
			N is Nt + 1.

% for append
append_operation([],L1,L1).
append_operation([H|T],L2,[H|X]) :- append_operation(T,L2,X).

% Base case
fib_list_N(0,[]).
fib_list_N(1,[0]).
fib_list_N(2,[0,1]).

% Main Case
fib_list_N(N,X):-
		length_check(X,N),                               % include length to check 
		Val is N-1,
		fib_list_N(Val,R),
		append_operation(_,[A,B],R),
		Val1 is A+B,
		append_operation(R,[Val1],X).