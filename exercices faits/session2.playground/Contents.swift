import UIKit


//Exercice 1
//Ecrire une fonction qui prend en entrée un tableau d'entiers et renvoie un tableau constitué des nombres positifs de ce tableau.
//moi
let randomTab = [2, -3, 5, -74, -6, 18, 6]
// Vous pouvez taper votre code ici
func tabPos(tab: [Int]) -> [Int] {
    let positifTab  = randomTab.filter { $0 > 0 }
    return positifTab
}


tabPos(tab: randomTab)

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




