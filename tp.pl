% Faits
couleur(pomme, rouge).
couleur(ballon, bleu).
couleur(citron, jaune).
couleur(banane, jaune).

mange(romain, pomme).
mange(lea, citron).
mange(sarah, pomme).
% Faits Partie 2 Regles
type(pomme, fruit).
type(banane, fruit).
type(citron, fruit).

aime_fruit(Personne) :-mange(Personne, Aliment), type(Aliment, fruit).

meme_couleur(X, Y) :-couleur(X, Cl), couleur(Y, Cl).

aiment_la_meme_chose(A, B) :- mange(A, Aliment), mange(B, Aliment).
%exercice 3
longueur([], 0).
longueur([_|T], N) :-
    longueur(T, N1),
    N is N1 + 1.
%Exercice 4

somme([], 0).
somme([H|T], S) :- somme(T, S1),
    S is S1+H.

%Partie 4

homme(pierre).
homme(luc).
homme(andre).

femme(marie).
femme(sara).

parent(pierre, luc).
parent(marie, luc).
parent(andre, pierre).
parent(sara, marie).

%Exercice-5
pere(P, E) :-homme(P), parent(P, E).
mere(M, E) :-femme(M), parent(M, E).
grand_parent(GP, E) :-parent(GP, P), parent(P, E).
ancetre(A, E) :- parent(A, E).
ancetre(A, E) :-parent(A, X), ancetre(X, E).
frere_ou_soeur(A, B) :-parent(P, A), parent(P, B).

%Partie 5
%Exercice 7
membre(X, [X|_]).
membre(X, [_|T]) :-membre(X, T).

%Exercice 8
max_liste([X], X).
max_liste([H|T], Max) :-
    max_liste(T, MaxT),
    ( H > MaxT -> Max = H ; Max = MaxT ).
