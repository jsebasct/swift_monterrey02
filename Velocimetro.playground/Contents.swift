//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    func descripcion() -> String {
        var result : String = "";
        
        switch self {
            
        case .Apagado:
            result = "Apagado"
            
        case .VelocidadBaja:
            result = "Velocidad Baja"
            
        case .VelocidadMedia:
            result = "Velocidad Media"
            
        case .VelocidadAlta:

            result = "Velocidad Alta"
        }
        
        return result
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init () {
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena : String) {
        
        //let temp = velocidad;
        let result = (velocidad.rawValue, velocidad.descripcion())
        
        switch velocidad {
            
        case .Apagado:
            velocidad = .VelocidadBaja

        case .VelocidadBaja:
            velocidad = .VelocidadMedia

        case .VelocidadMedia:
            velocidad = .VelocidadAlta

        case .VelocidadAlta:
            velocidad = .VelocidadMedia

        }
        
        return result
    }
}

var auto = Auto()

for index in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(result.actual) - \(result.velocidadEnCadena)")
}

