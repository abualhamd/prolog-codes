max([H1,H2|T]):-H1>=H2, max([H1|T]).
max([H1,H2|T]):-H2>H1, max([H2|T]).
max([H]):-write(H).
/* ?- max([1,2,3,4,5]). */

min([H1,H2|T]):-H1=<H2, min([H1|T]).
min([H1,H2|T]):-H2<H1, min([H2|T]).
min([H]):-write(H).
/* ?- min([1,2,3,4,5]). */

sum([H|T],S):- C is H+S, sum(T,C).
sum([],S):-write(S).
/* ?- sum([1,2,3,4,5],0). */

len([_|T],X):- C is X+1,len(T,C).
len([],X):-write(X).
/* ?- len([1,2,3,4,5],0). */

last([_|T]):-last(T).
last([X]):-write(X).
/* ?- last([1,2,3,4,5]). */

fact(X, S):-X>0, X1 is X-1,V is X*S, fact(X1,V).
fact(0,S):-write(S).
/* ?- fact(6,1). */












sep([H|T],Neg,Pos):-H>=0, sep(T,Neg,[H|Pos]).
sep([H|T],Neg,Pos):-H<0, sep(T,[H|Neg],Pos).
sep([],Neg,Pos):-write(Neg),nl,write(Pos).

rev([H|T],L):-append([H],L,Lst), rev(T,Lst).
rev([],L):-write(L).

prnt([H|T]):-write(H),nl,prnt(T).
prnt([]).

rem([H|T],L):-member(H,T),rem(T,L).
rem([H|T],L):-append(L,[H],Lst),rem(T,Lst).
rem([],L):-write(L).

even(X):- X mod 2 =:= 0.
odd(X):- X mod 2 =\= 0.


color(red).
color(blue).
color(yellow).
color(green).
map(A,B,C,D,E):-
    adj(A,B),
    adj(A,D),
    adj(A,E),
    adj(B,C),
    adj(B,D),
    adj(B,E),
    adj(C,D),
    adj(C,E),
    adj(D,E).
adj(X,Y):-color(X),color(Y), X \= Y.











