import UIKit


//Exercice 1
//Ecrire une fonction qui prend en entrée un tableau d'entiers et renvoie un tableau constitué des nombres positifs de ce tableau.
//moi
func tabPos(tab: [Int]) -> [Int] {
    let positifTab  = tab.filter { $0 > 0 }
    return positifTab
}
print(tabPos(tab: [2, -3, 5, -74, -6, 18, 6]))



// 2Ecrire une fonction qui prend en entrée le nom de l'utilisateur, son age et renvoie une string : "bienvenue ..." si la personne est majeure et nil si la personne est mineure.

// moi
func majorUser( name: String, age : Int) -> String? {
    if age >= 18 {
      return "Bienvenue \(name)"
    } else {
        return nil
    }
}
majorUser(name: "paul", age: 16)
majorUser(name: "andie", age: 19)




//exercice 3 En utilisant une boucle, remplir un tableau comme ceci [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]. moi :
var tab = [Int]()
for i in stride(from: 10, through: 1, by: -1){
    tab.append(i)
}
print(tab)


//Exercice 4
//Ecrire une fonction qui prend en entrée un entier, et renvoie true si le nombre est divisible par 2 ou 3 et false sinon. Rappel : pour savoir si a est divisible par 2, le test est a % 2 == 0 moi

func reste0Par2Ou3(nombre: Int) -> Bool {
   return nombre % 2 == 0 || nombre % 3 == 0
    }

print(reste0Par2Ou3(nombre: 6))

//Exercices sur les Enum.
//
//enum et struct
//1. Créer un struct Eleve
//Avec les propriétés : nom, age, sexe, niveau
//
//Valeurs possibles pour le niveau : cp, ce1, ce2, cm1, cm2 Valeurs possibles pour le sexe : garcon, fille
//
//2. Créez quelques élèves
//Par exemple : toto, 6 ans, garcon, cp kiki, 8 ans, fille, ce2 lolo, 9 ans, garcon cp
//
//3. Mettre ces élèves dans un tableau eleves
//4. Ecrire une fonction qui prend en entrée un tableau d'eleve et un niveau : et qui renvoie un tableau composé des élèves de ce niveau
//5. L'appliquer au tableau eleves pour tester
//Utilisez des enum pour le sexe et le niveau
//Attention aux types de variables à manipuler
//A vous de jouer :

enum Sexe {
    case fille
    case garçon
}
enum Niveau {
    case cp
    case ce1
    case ce2
    case cm1
    case cm2
}

struct Eleve {
    var nom: String
    var age: Int
    var sexe: Sexe
    var niveau: Niveau
}

let toto = Eleve(nom: "Toto", age: 6, sexe: .garçon, niveau: .cp)
let kiki = Eleve(nom: "Kiki", age: 8, sexe: .fille, niveau: .ce2)
let lolo = Eleve(nom: "Lolo", age: 9, sexe: .garçon, niveau: .cp)

var eleves = [toto, kiki, lolo]

func eleveDuMemeNiveau( tabEleves: [Eleve], niveau: Niveau) -> [String] {
    var eleveNiveau = [String]()
    for eleve in tabEleves {
    if eleve.niveau == niveau {
        eleveNiveau.append(eleve.nom)
    }
    }
    return eleveNiveau
}


print(eleveDuMemeNiveau(tabEleves: eleves, niveau: .cp))
