//: Playground - noun: a place where people can play

import UIKit


//Case with enums
enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120

    init(  velocidadInicial : Velocidades  ){
        self = velocidadInicial
    }

}

class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String){
        var velocidadEnCadena : String
        let actual :Int = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Medica"
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad alta"
        }
        return (actual, velocidadEnCadena)
    }
}

var auto : Auto = Auto()
var velocidad: (Int, String)
for i in 1...20{
    velocidad = auto.cambioDeVelocidad()
    print("\(velocidad.0), \(velocidad.1)")
}

