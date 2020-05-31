import UIKit

// Protocolos y delegados

// Protocolo : En iOS un protocolo (Protocol) es una lista de métodos o funciones que especifican un "Contrato" que cierta clase debe de cumplir si se le asigna el protocolo . Delegado : En iOS un delegado (Delegate) es una clase (o instancia) que implementa un protocolo y realiza ciertas funciones en nombre de otra clase. También se puede utilizar para notificar ciertos eventos .

// TIP: A diferencia de cuando una clase hereda de otra, una clase si puede implementar más de un protocolo a la vez. (En cambio una clase solo puede heredar de una sola clase padre)


protocol operacionesBasicas {
    // Dentro del protocolo se ponen funciones
    // Aqui se ponen listas de metodos que implementará otra clase.
    func Suma(a:Int, b:Int);
    func Resta(a:Int, b:Int);
}

class Computadora {
    let cpu:String = "8086";
}

// class Nombre:ClaseAHeredad, Protocolo {
class Calculadora:Computadora, operacionesBasicas {
    // La clase, que implementa el protocolo debe incluir todas las funciones indicadas en el protocolo, sino dara error.
    func Suma(a:Int, b:Int){
        print("Estoy sumando");
    }
    func Resta(a:Int, b:Int) {
        print("Estoy restando");
    }
    
}
