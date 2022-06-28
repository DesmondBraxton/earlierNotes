
var greeting = "Hello, playground"
import UIKit

print("We are using the class example from the previous lesson")

class Person {
    var name = ""
    
    init() {
        // custom init code
        name = "Joe"
    }
    init(_ name:String) {
        
        self.name = name
        
    }
}

class Employee: Person {
    var salary = 0
    var role = ""
    
    override init(_ name:String){
        // This is calling in the init function of the Person class
        super.init(name)
        
        self.role = "Analyst"
    }
    func doWork(){
        print("Hi my name is \(name) and Im doing work")
        salary += 1
    }
}

print("The manager class will inherit all of the properties of the employee class, everyone starts off at the analyst level")

class Manager:Employee {
    
    var teamSize = 0
    
    override func doWork() {
        super.doWork()
        
        print("I'm managing people")
        salary += 2

    }
    
    func firePeople(){
        print("I'm firing people")
    }
}


let myPerson = Person("Thomas")
print(myPerson.name)

let myEmployee = Employee("Joe")
print(myEmployee.role)
print(myEmployee.name)
