company(appy).
company(sumsum).
competitor(appy, sumsum).
competitor(sumsum, appy).

smartphoneTech('galactica-s3').
developed(sumsum, 'galactica-s3').

steal(stevey, 'galactica-s3').
boss(stevey, appy).
 
rival(X, Y) :- competitor(X, Y), competitor(Y, X).
business(X) :- smartphoneTech(X).
 
is_unethical(A) :-
    company(B),
    company(C),
    boss(A, B),
    rival(B, C),
    developed(C, D),
    steal(A, D),
    business(D).
