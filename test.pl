parent(vasya, petya).
parent(vika, petya).
parent(petya, sasha).
parent(petya, kolya).
parent(liza, kolya).
parent(viktor, liza).
parent(nastya, liza).
parent(kolya, ira).
parent(masha, ira).
parent(kolya, boris).
parent(masha, boris).
parent(ivan, masha).
parent(eleonora, masha).
parent(olya, sasha).
parent(yana, olya).
parent(igor, olya).
parent(ira, david).
husband(vasya, vika).
husband(viktor, nastya).
husband(ivan, eleonora).
husband(yana, igor).
husband(kolya, masha).
husband(petya, olya).
male(vasya).
male(petya).
male(kolya).
male(viktor).
male(ivan).
male(igor).
male(boris).
male(david).
female(sasha).
female(ira).
female(vika).
female(olya).
female(nastya).
female(eleonora).
female(yana).
female(masha).
female(liza).
mother(X,Y):- parent(X,Y) , female(X). %3
mother(X):- mother(Y,X), write(Y). %3
grandchild(X,Z) :- parent(Y, X), parent(Z, Y).
men(X) :- male(X). %1
women(X) :- female(X). %1
%child(X, Y):- parent(Y,X).
children(X) :- parent(X,Y), write(Y). %2 child(Y, X), write(Y).
son(X, Y) :- parent(Y, X), male(X). %4
son(X) :- son(Y, X), write(Y). %4
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X). %5
brothers(X) :- brother(Y, X), dif(X, Y), write(Y). %5
husband(X) :- husband(Y, X), write(Y). %6
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X).
common_parent(X, Y) :- parent(Z, X), parent(Z, Y).
b_s(X, Y) :- common_parent(X, Y), (brother(X, Y); sister(X, Y)). %7
b_s(X) :- b_s(Y, X), dif(X, Y), write(X, Y).
grand_pa(X, Y) :- parent(Z, Y), parent(X, Z), male(X). %8
grand_pas(X) :- grand_pa(Y, X), write(Y). %8
grand_so(X, Y) :- parent(Z, X), parent(Y, Z), male(X). %9
grand_sons(X) :- grand_so(Y, X), write(Y). %9
grand_pa_and_son(X, Y) :- (grand_pa(X, Y), grand_so(Y, X)) ; (grand_pa(Y, X), grand_so(X, Y)). %10
grand_da(X, Y) :- parent(Z, X), parent(Y, Z), female(X). %11
grand_pa_and_da(X,Y) :- (grand_pa(X, Y), grand_da(Y, X)) ; (grand_pa(Y, X), grand_da(X, Y)). %11
uncle(X, Y) :- parent(Z, Y), brother(X, Z). %12
uncles(X) :- uncle(Y, X), write(Y). %12
aunt(X, Y) :- parent(Z, Y), sister(X, Z). %13
niece(X, Y) :- (uncle(Y, X) ; aunt(Y, X)), female(X). %13
nieces(X) :- niece(Y, X), write(Y). %13