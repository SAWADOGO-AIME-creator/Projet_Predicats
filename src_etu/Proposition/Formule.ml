(** Le module Formule contient les types et définitions de base permettant la
    manipulation des formules de la logique propositionnelle. *)

(** Type des formules de la logique propositionnelle, avec des string comme
    atomes. *)
type formule =
  | Bot
  | Top
  | Atome of string
  | Imp of (formule * formule)
  | Ou of (formule * formule)
  | Et of (formule * formule)
  | Non of formule

(* ----------------- Exercice 1 : Hauteur ----------------- *)

(** Calcule la hauteur de l'arbre syntaxique d'une formule. *)
let hauteur (_ : formule) : int = failwith "à faire"

(* ----------------- Exercice 2 : Représentation en chaîne de caractères ----------------- *)

(** Conversion d'une formule en chaîne de caractères. *)
let rec string_of_formule : formule -> string = function
  | Atome s -> s
  | Et (f, g) ->
      String.concat ""
        [ "("; string_of_formule f; "∧"; string_of_formule g; ")" ]
  | _ -> failwith "à faire"

(* ----------------- Exercice 3 : Conversion depuis une liste ----------------- *)

(** Transforme une liste de formules [[f1; f2; ... ; fl]] en la formule
    [f1 ∧ f2 ∧ ... ∧ fl] en considérant les éléments suivants : Si un des [fi]
    vaut [Bot], renvoie [Bot]. Si un des [fi] vaut [Top], il n'apparait pas dans
    le résultat. Si tous les [fi] valent [Top], renvoie [Top]. *)
let conj_of_list (_ : formule list) : formule = failwith "à faire"

(** Transforme une liste de formules [[f1; f2; ... ; fl]] en la formule
    [f1 ∨ f2 ∨ ... ∨ fl] en considérant les éléments suivants : Si un des [fi]
    vaut [Top], renvoie [Top]. Si un des [fi] vaut [Bot], il n'apparait pas dans
    le résultat. Si tous les [fi] valent [Bot], renvoie [Bot]. *)
let disj_of_list (_ : formule list) : formule = failwith "à faire"

(** --- Exercice 4 : Fonctions d'évaluation ------- *)

type interpretation = string -> bool
(** Type des interprétations. *)

(** Évalue une formule en fonction d'une interprétation. *)
let eval (_ : interpretation) (_ : formule) : bool = failwith "à faire"

(** --- Exercice 5 : Tests de satisfaisabilité ------- *)

(** Transforme une liste de string en une interprétation. *)
let interpretation_of_list (_ : string list) : interpretation =
  failwith "à faire"

(** Calcule la liste de toutes les sous-listes d'une liste donnée. *)
let all_sublists (_ : 'a list) : 'a list list = failwith "à faire"

(** Calcule toutes les interprétations pour une liste d'atomes donnée. *)
let all_interpretations (_ : string list) : interpretation list =
  failwith "à faire"

(** Calcule la liste (triée et sans doublon) des atomes d'une formule.*)
let atomes (_ : formule) : string list = failwith "à faire"

(** Détermine si une formule est satisfaisable. *)
let est_satisfaisable (_ : formule) : bool = failwith "à faire"

(** Renvoie un témoin de la satisfaisabilité d'une formule, s'il en existe. *)
let ex_sat (_ : formule) : interpretation option = failwith "à faire"

(** Détermine si une formule est une tautologie. *)
let est_tautologie (_ : formule) : bool = failwith "à faire"

(** Détermine si une formule est une contradiction. *)
let est_contradiction (_ : formule) : bool = failwith "à faire"

(** Détermine si une formule est contingente. *)
let est_contingente (_ : formule) : bool = failwith "à faire"

(** ----------------- Exercice 8 : Tables de vérité ----------------- *)

type ligne = string list * bool
(** Type d'une ligne d'une table de vérité. *)

type table = ligne list
(** Type d'une table de vérité. *)

(** Calcule la table de vérité associée à une formule. *)
let table_of_formule (_ : formule) : table =
  failwith "table_of_formule : à faire"
