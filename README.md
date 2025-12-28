# TP – Introduction à Prolog

MOUGAMADOU
Fasil
Bachelor L3B

---

## Exercice 1 – Requêtes (Partie 1)

### 1) Qui est rouge ?
Requête :  
- `couleur(X, rouge).`

Réponse (résultat obtenu) :  
- `X = pomme.`

Preuve : capture d’écran fournie.

---

### 2) Qu’est-ce que mange Léa ?
Requête :  
- `mange(lea, X).`

Réponse (résultat obtenu) :  
- `X = citron.`

Preuve : capture d’écran fournie.

---

### 3) Qui mange une pomme ?
Requête :  
- `mange(X, pomme).`

Réponse (résultat obtenu) :  
- `X = romain ;`
- `X = sarah.`

Preuve : capture d’écran fournie.

---

### 4) Quel objet est de couleur jaune ?
Requête :  
- `couleur(X, jaune).`

Réponse (résultat obtenu, selon ton fichier) :  
- `X = citron ;`
- `X = banane.`

Preuve : capture d’écran à faire (si besoin, même principe que les autres).

---

## Exercice 2 – Règles + Requêtes de test (Partie 2)

### 1) `aime_fruit(Personne)`
Règle (dans le fichier) :  
- `aime_fruit(Personne) :- mange(Personne, Aliment), type(Aliment, fruit).`

Requête de test :  
- `aime_fruit(X).`

Réponse (résultat obtenu) :  
- `X = romain ;`
- `X = lea ;`
- `X = sarah.`

Preuve : capture d’écran fournie.

---

### 2) `meme_couleur(X, Y)`
Règle (dans le fichier) :  
- `meme_couleur(X, Y) :- couleur(X, Cl), couleur(Y, Cl).`

Requête de test :  
- `meme_couleur(banane, citron).`

Réponse (résultat obtenu) :  
- `true.`

Preuve : capture d’écran fournie.

---

### 3) `aiment_la_meme_chose(A, B)`
Règle (dans le fichier) :  
- `aiment_la_meme_chose(A, B) :- mange(A, Aliment), mange(B, Aliment).`

Requête de test :  
- `aiment_la_meme_chose(romain, sarah).`

Réponse (résultat obtenu) :  
- `true.`

Preuve : capture d’écran fournie.

---

## Exercice 3 – Longueur d’une liste (Partie 3)

### 1) Expliquer en 2 phrases le fonctionnement
Réponse :  
- Cas de base : la longueur d’une liste vide est 0.  
- Cas récursif : on calcule la longueur de la queue puis on ajoute 1.

### 2) Tests + réponses

Requête : `longueur([a,b,c], N).`  
Réponse : `N = 3.`  
Preuve : capture d’écran fournie.

Requête : `longueur([], N).`  
Réponse : `N = 0.`  
Preuve : capture d’écran fournie.

Requête : `longueur([1,2,3,4,5], N).`  
Réponse : `N = 5.`  
Preuve : capture d’écran fournie.

### 3) Pourquoi `_` dans la tête de la règle ?
Réponse :  
- `_` sert à ignorer la tête de la liste, car seule la queue est utile pour calculer la longueur.

---

## Exercice 4 – Somme d’une liste (Partie 3)

Règle (dans le fichier) :  
- `somme([], 0).`  
- `somme([H|T], S) :- somme(T, S1), S is S1+H.`

Tests + réponses :

Requête : `somme([1,2,3], S).`  
Réponse : `S = 6.`  
Preuve : capture d’écran à faire si besoin.

Requête : `somme([], S).`  
Réponse : `S = 0.`  
Preuve : capture d’écran à faire si besoin.

---

## Exercice 5 – Règles (Partie 4)

### 1) `pere(P, E)`
Règle (dans le fichier) :  
- `pere(P, E) :- homme(P), parent(P, E).`

### 2) `mere(M, E)`
Règle (dans le fichier) :  
- `mere(M, E) :- femme(M), parent(M, E).`

### 3) `grand_parent(GP, E)`
Règle (dans le fichier) :  
- `grand_parent(GP, E) :- parent(GP, P), parent(P, E).`

### 4) `ancetre(A, E)` (récursif)
Règles (dans le fichier) :  
- `ancetre(A, E) :- parent(A, E).`  
- `ancetre(A, E) :- parent(A, X), ancetre(X, E).`

### 5) `frere_ou_soeur(A, B)` (mêmes parents)
Règle (dans le fichier) :  
- `frere_ou_soeur(A, B) :- parent(P, A), parent(P, B).`

---

## Exercice 6 – Vérifications (Partie 4)

Requête : `grand_parent(sara, luc).`  
Réponse : `true.`  
Preuve : capture d’écran fournie.

Requête : `ancetre(andre, luc).`  
Réponse : `true.`  
Preuve : capture d’écran fournie.

Requête : `frere_ou_soeur(luc, X).`  
Réponse : `X = luc ; X = luc.`  
Preuve : capture d’écran fournie.

---

## Exercice 7 – Membre d’une liste (Partie 5)

Règles (dans le fichier) :  
- `membre(X, [X|_]).`  
- `membre(X, [_|T]) :- membre(X, T).`

Tests + réponses :

Requête : `membre(3, [1,2,3]).`  
Réponse : `true.`  
Preuve : capture d’écran fournie.

Requête : `membre(X, [1,2,3]).`  
Réponse : `X = 1 ; X = 2 ; X = 3.`  
Preuve : capture d’écran fournie.

---

## Exercice 8 – Maximum d’une liste (Partie 5)

Règles (dans le fichier) :  
- `max_liste([X], X).`  
- `max_liste([H|T], Max) :- max_liste(T, MaxT), ( H > MaxT -> Max = H ; Max = MaxT ).`

Tests + réponses :

Requête : `max_liste([1,2,3], M).`  
Réponse : `M = 3.`  
Preuve : capture d’écran fournie.

Requête : `max_liste([5], M).`  
Réponse : `M = 5.`  
Preuve : capture d’écran fournie.

Requête : `max_liste([4,1,9,2], M).`  
Réponse : `M = 9.`  
Preuve : capture d’écran fournie.
