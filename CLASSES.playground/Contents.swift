import UIKit

var greeting = "Hello, playground"



print("Get this information to represent an employee")
print(" Functions can be placed inside of these too EVERYTHING build upon the next thing")

class EMPLOYEE {
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork() {
        print("Hi my name is \(name) and I'm doing work")
        salary += 1
    }
    
}
let a:Int = 10
let b:String = "Ted"
var c:EMPLOYEE = EMPLOYEE()

c.name = "Tom"
c.role = "Art Director"
c.salary = 1000
print(c.salary)

c.doWork()

var d = EMPLOYEE()
d.name = "Sarah"
d.role = "Manager"
d.salary = 1000

d.doWork()
