import UIKit

var greeting = "Hello, playground"
var name = "Martin"
let name2 = "Piccato"
print("Esto es un primer ejemplo")

// Tipos de variables

// CHAR: solo admite un tipo de variable
var unaLetra: Character = "M" // Declarar los tipos es opcional
var corazon: Character = "\u{2665}"
print(corazon)

//STRING
var dogName: String = "Gabo"

//INT
var year:Int = 2024

//FLOAT
var numPi: Float = 3.14

//DOUBLE (soporta el doble de decimales que Float)
var numPi2 = 3.1415923456783945870274 // Inventé los decimales después del 92

//BOOL
var imHappy = true

//OPERACIONES CON VARIABLES
//Suma
var num1: Int = 5
var num2: Int = 10

print(num1)

num1 = num1 + num2

print(num1)

//Ejercicio: Calcular el IMC
var peso: Double = 115
var altura: Double = 1.85
var IMC: Double = peso / (altura * altura)
print("Tu Indice de Masa Corporal es: \(IMC)")

//FUNCIONES

func showMyName(nombre:String) {
    print("Hola, \(nombre)")
}

showMyName(nombre: "Martin")
var nombre:String = "Juan"
showMyName(nombre: nombre)

func calculateSuma(num: Double, num2: Double) {
    let resultado = num + num2
    print("La suma es de: \(resultado)")
}
calculateSuma(num: 20, num2: 30)

func resta(a:Int,b:Int) -> Int {
    let resta = a - b
    return resta
}
let resultadoResta = resta(a: 5, b: 15)
print(resultadoResta)

//IF-ELSE
func greeting(_ hour: Int) {
    if hour <= 12 {
        print("Buenos días")
        
    } else {
        print("Buenas tardes")
    }
}

greeting(13)

func mes(month: Int) {
    if month == 1 {
        print("Enero")
    } else if month == 2 {
        print("Febrero")
    }else if month == 3 {
        print("Marzo")
    }else if month == 4 {
        print("Abril")
    }else if month == 5 {
        print("Mayo")
    }else if month == 6 {
        print("Junio")
    }else if month == 7 {
        print("Julio")
    }else if month == 8 {
        print("Agosto")
    }else if month == 9 {
        print("Septiembre")
    }else if month == 10 {
        print("Octubre")
    }else if month == 11 {
        print("Noviembre")
    }else if month == 12 {
        print("Diciembre")
    } else {
        print("Número no válido")
        
    }
}
mes(month:10)

//SWITCH

func monthBySwitch(_ month: Int) {
    switch month {
    case 1: print("Enero")
    case 2: print("Febrero")
    case 3: print("Marzo")
    case 4: print("Abril")
    case 5: print("Mayo")
    case 6: print("Junio")
    case 7: print("Julio")
    case 8: print("Agosto")
    case 9: print("Septiembre")
    case 10: print("Octubre")
    case 11: print("Noviembre")
    case 12: print("Diciembre")
    default: print("Número de mes inválido")
    }
}
monthBySwitch(12)

// Uso rangos
func getSemestre(_ month: Int) {
    switch month {
    case 1...6: print("Primer Semestre")
    case 7...12: print("Segundo Semestre")
    default: print("Coloca un mes válido")
    }
}

getSemestre(12)

// Calcula el área de un círculo

func areaCirculo(_ radio: Double) -> Double {
    return Double.pi * radio * radio
}
let result = areaCirculo(10)
print(result)

//Positivo, negativo o cero
func positivoNegativo(_ number: Int) {
    if number > 0 {
        print("Positivo")
    } else if number < 0 {
        print("Negativo")
    } else {
        print("El número es 0")
    }
}
positivoNegativo(4)
positivoNegativo(-4)
positivoNegativo(0)

func positiveNegativeSwitch(_ number: Int) {
    switch number{
    case let x where x > 0: print("Positivo")
    case let x where x < 0: print("Negativo")
    default:print("Number 0")
    }

    
}
positiveNegativeSwitch(-12)

//ARRAYS
var names: [String] = ["Martin", "Lautaro", "Lorenzo"]
print(names[0])
var daysOfWeek:[String] = ["Lunes", "Martes", "Miércoles","Jueves", "Viernes", "Sábado", "Domingo"]
//Agregar un elemento
names.append("Cinthia")
print(names)
// Eliminar un elemento
names.remove(at: 0)

//Modificar elementos
names[1] = "Lautaro Agustin"
print(names)

//BUCLES

for elemento in daysOfWeek {
    print(elemento)
}

for elemento in daysOfWeek{
    if elemento == "Jueves" {
        print("Existe el previernes")
    }
}

var count = 0
while count <= 5 {
    print("Soy contador:\(count)")
    count+=1
}

var count2=2
repeat {
    count2+=1
    print("Contando \(count2)")
} while count2 < 5

func tablaMultiplicar(_ number:Int) {
    for i in 1...10 {
        print("\(number) x \(i) = \(number*i)")
    }
}
tablaMultiplicar(4)

var totalSum = 0
for i in 1...100 {
    if i % 2 == 0 {
        totalSum += i
    }
}
print("El resultado de sumar los n pares hasta el 100 es \(totalSum)")

func totalVocal(_ text: String) {
    var totalVocal = 0
    for vocal in text {
        switch vocal.lowercased() {
        case "a","e","i","o","u": totalVocal += 1
        default:continue
        }
    }
    print("La palabra \(text) tiene \(totalVocal) vocales")
}
totalVocal("Antonio")

//TUPLAS
var tupla = ("Martin", 31, "Laprida 1175", 3700, "Chaco")

//DICCIONARIOS

var diccionario:[String: Any] = ["Name": "Martin", "edad":46, "Direction":"Laprida 1175"]
let myNameDiccionary = diccionario["Name"] as? String ?? "No encuentro el dato"
print(myNameDiccionary)

for (key, value) in diccionario {
    print("La clave \(key) contiene \(value)")
}

//CLASES
class Persona {
    var name: String
    var edad: Int
    
    init(name: String, edad: Int) {
        self.name = name
        self.edad = edad
    }
    
    func saludar() {
        print("Hola, soy \(name) y tengo \(edad)")
    }
}
var martin = Persona(name:"Martin", edad: 46)
var lorenzo = Persona(name: "Lorenzo", edad: 14)

martin.saludar()
lorenzo.saludar()

//STRUCT
struct ExamplePersona {
    var name: String
    var edad: Int
}

var persona: ExamplePersona = ExamplePersona(name: "Lautaro", edad: 16)

