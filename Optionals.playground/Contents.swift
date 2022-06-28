 import UIKit

var greeting = "Hello, playground"

var a = 7
 
// how do we define emptiness? in this lesson we will go into that

var b: Int? = nil

var t: String? = nil

class XmasPresent {
    func surprise() -> Int{
        return Int.random(in: 1...12)
    }
}

let present:XmasPresent? = XmasPresent()

// Check the optional to see if it contailns an object
if present !== nil{
    //it contains the object
    //call the surprise function
    print(present!.surprise())
}


if let actualPresnet = present {
    
    print(actualPresent.surprise())
}





