import UIKit

var greeting = "Hello, playground"

class Employee{
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork(){
        print("Hi my name is \(name) and Im doing work")
        salary += 1
    }
}

print("The manager class will inherit all of the properties of the employee class")

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

var n = Manager()
n.name = "Maggie"
n.salary = 2000
n.role = "Manager of IT"
n.teamSize = 10
n.doWork()





var m = Manager()
m.name = "Maggie"
m.salary = 2000
m.role = "Manager of IT"
m.teamSize = 10
m.doWork()
