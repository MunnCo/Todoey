import UIKit

//examples of Singletons
let defaults = UserDefaults.standard
//let sharedURLSession = URLSession.shared
//

//MARK - Example 1

//class Car {
//    var color = "Red"
//}
//let myCar = Car()
//myCar.color = "Blue"
//
//let yourCar = Car()
//print(yourCar.color) -->we got Red

//MARK - Example 2 - Using Singletons

class Car {
    var color = "Red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.color = "Blue"

let yourCar = Car.singletonCar
print(yourCar.color)

class A {
    init() {
        Car.singletonCar.color = "Brown"
        
    }
}

class B {
    init() {
        print(Car.singletonCar.color)
    }
}

let a = A()
let b = B()
