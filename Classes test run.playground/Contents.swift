import UIKit

var greeting = "Hello, playground"

class Patient {
    var name = ""
    var weight = 0
    var height = 0
    var condition = ""
}

let a:String = "Kevin B."
let b:Int = 155
let c:Int = 69
let d:String = "Athsma"
let e = Patient()

e.name = "Kevin H."
e.condition = "AIDS"
e.height = 74
e.weight = 139

print("Lets go to subclassing and inheritance")

class Employee {
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork() {
        print("Hi my name is \(name)and I'm doing work")
        salary += 1}
    }

