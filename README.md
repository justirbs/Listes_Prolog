# Opérations sur les listes

Ouvrir un terminal à la racine du projet et saisir la commande suivante :
```
prolog
```

## Trouver le dernier élément d'une liste

Charger le fichier :
```
['my_last.prolog'].
```
Saisir la commande suivante :
```
my_last(X,L).
```
Avec L une liste de la forme [a,b,c]. Affiche une solution du type X = c.

## Trouver l'avant dernier élément d'une liste

Charger le fichier :
```
['my_last.prolog'].
```
Saisir la commande suivante :
```
my_last_but_once(X,L).
```
Avec L une liste de la forme [a,b,c]. Affiche une solution du type X = b.

## Inverser les éléments dans une liste

Charger le fichier :
```
['reverse.prolog'].
```
Saisir la commande suivante :
```
reverse(L,S).
```
Avec L une liste de la forme [a,b,c]. Affiche une solution du type S = [c,b,a].

## Vérifier si une liste est un palindrome

Charger le fichier :
```
['reverse.prolog'].
```
Saisir la commande suivante :
```
palindrome(L).
```
Avec L une liste de la forme [a,b,c]. Affiche vrai ou faux.

## Applatir une liste

Charger le fichier :
```
['my_flatten.prolog'].
```
Saisir la commande suivante :
```
my_flatten(L,S).
```
Avec L une liste de la forme [a,[b,c]]. Affiche une solution du type S = [a,b,c].

## Compresser une liste

Charger le fichier :
```
['compress.prolog'].
```
Saisir la commande suivante :
```
compress(L,S).
```
Avec L une liste de la forme [a,a,a,b,b,c]. Affiche une solution du type S = [a,b,c].

## Empaqueter les doublons consécutif d'une liste dans une sous liste
Charger le fichier :
```
['pack.prolog'].
```
Saisir la commande suivante :
```
pack(L,S).
```
Avec L une liste de la forme [a,a,a,b,b,c]. Affiche une solution du type S = [[a,a,a],[b,b],c].

## Encoder une liste avec le nombre de doublons consécutifs de chaque élément
Charger le fichier :
```
['pack.prolog'].
```
Saisir la commande suivante :
```
pack(L,S).
```
Avec L une liste de la forme [a,a,a,b,b,c]. Affiche une solution du type S = [[3, a], [2, b], [1, c]]
