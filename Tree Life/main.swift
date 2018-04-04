//
//  main.swift
//  Tree Life
//
//  Created by Nicolas Gallis on 21/03/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

 var size: Float = 0

func input() -> Int {
    let strData = readLine();
    return Int(strData!)!
}

func random(_ n:Int) -> Int
{
    return Int(arc4random_uniform(UInt32(n)))
}

func event() {
    var event: [String] = ["Grand Soleil aujourd'hui","Nuageux mais agréable","Nuageux et un peu froid","Assez mauvais temps, il fait froid","Il pleut, ça avantage votre arbre","Beaucoup de vent ces derniers temps","Froid glacial pendant les nuits, ça gèle votre arbre ! AIE !"]
    let i: Int = random(6)
    print(event[i])
}



func tree() {
    var ageOfTheTree: Int = 0
    var year: Int = 2018
    let month: [String] = ["Janvier","Février","Mars","Avril","Mai","Juin","Juillet","Août","Septembre","Octobre","Novembre","Décembre"]
    var n: Int
    var plantFood: Int
    repeat {
        if ageOfTheTree <= 70 {
            for n in 0...11 {
                print(month[n], year ,"L'arbre mesure \(size) cm et est agé de \(ageOfTheTree) ans!")
                print("")
                event()
                print("")
                if n == 2 || n == 5 || n == 8 || n == 11 {
                    let x: Int = random(2)
                    if x == 0 {
                        print("Voulez vous arroser votre arbre ?")
                        print("1. Oui")
                        print("2. Non")
                        plantFood = input()
                            if plantFood == 2 {
                                size -= 0.2
                            if size < 0 {
                                print("Votre arbre est mort de soif")
                                exit(0)
                                }
                            } else {
                                size += 0.01
                            }
                    } else {
                     size += 0.01
                }
            }
                size += 0.5
            }
            year += 1
            ageOfTheTree += 1
        } else {
            for n in 0...11 {
                print(month[n], year ,"L'arbre mesure \(size) cm !")
                print("")
                event()
                print("")
                size += 0.1
            }
            year += 1
            ageOfTheTree += 1
        }
        n = random(20)
    } while n < 19
    
    if n == 19 {
        print("Ton arbre est mort en \(year) et mesurait \(size) cm")
    }
}


var choice: Int
print("Veux tu planter un arbre ?")
print("1. Oui")
print("2. Non")
choice = input()

if choice == 1 {
    
    tree()
    
} else {
    
    print("Ok...Tant pis, reviens plus tard :) !")
    
}
