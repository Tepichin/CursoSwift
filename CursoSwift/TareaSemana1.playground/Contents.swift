//: Playground - noun: a place where people can play


import UIKit

var str = "Hello, playground"

var num = 0
//Generar un rango de 0 a 100, incluye el número 100 en el rango.
for var i:Int = 0; i<=100; i++ {
    i

    
//Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
    var div5 = i % 5
    var par = i % 2
    if(div5 == 0){
        print("El numero \(i) es Bingo!!!!")
    }
    
//Si el número es par, imprime: # el número + “par!!!”
//Si el número es impar, imprime: # el número + “impar!!!”
    if(par == 0){
        print("El numero \(i) es Par!!!!")
    }else{
        print("El numero \(i) es Impar!!!!")
    }
    
    if(i >= 30 && i <= 40){
        print("El numero \(i) viva Swift!!!!")
    }
    
//Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
}
