open Proposition.Formule

(** Type des formules utilisées pour les syllogismes *)
type formule_syllogisme = PourTout of formule | IlExiste of formule

(** string_of_formule_log_prop_var s f : conversion d'une formule f en chaîne de
    caractères, en les représentant comme des prédicats unaires appliqués sur
    des occurrences de la variable s. *)
let string_of_formule_log_prop_var (_ : string) (_ : formule) : string =
  failwith "string_of_formule_log_prop_var : à faire"

(** string_of_formule_syllogisme f : conversion d'une formule f en chaîne de
    caractères, en considérant des prédicats unaires appliqués sur des
    occurrences de la variable s. *)
let string_of_formule_syllogisme (_ : formule_syllogisme) : string =
  failwith "string_of_formule_syllogisme : à faire"

(** Type des combinaisons booléennes pour les syllogismes *)
type boolCombSyllogismes =
  | Vrai
  | Faux
  | Base of formule_syllogisme
  | Et of boolCombSyllogismes * boolCombSyllogismes
  | Ou of boolCombSyllogismes * boolCombSyllogismes
  | Non of boolCombSyllogismes
