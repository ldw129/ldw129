male(prince_charles).
male(prince_andrew).
male(prince_edward).

female(princess_ann).

parent(queen_elizabeth, prince_charles).
parent(queen_elizabeth, princess_ann).
parent(queen_elizabeth, prince_andrew).
parent(queen_elizabeth, prince_edward).

older(prince_charles, princess_ann).
older(prince_charles, prince_andrew).
older(prince_charles, prince_edward).
older(princess_ann, prince_andrew).
older(princess_ann, prince_edward).
older(prince_andrew, prince_edward).

succession(X,Y) :-
    male(X),
    male(Y),
    older(X, Y).

succession(X,Y) :-
    female(X),
    female(Y),
    older(X, Y).

succession(X,Y) :-
    male(X),
    female(Y).
