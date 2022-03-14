// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals

var optionalFloat: Float? //use question mark ? to represent this is an optional value that can be null
var requiredFloat: Float
var implicitlyUnwrappedOptionals: Float!

type(of: optionalFloat)
type(of: requiredFloat)

//optionalFloat = 2.6
print("OptionalFloat = \(optionalFloat)")

// Optionals with forced unwrapping
//print("OptionalFloat = \(optionalFloat!)") // will crash since force unwrapping an optional that is nil is a crash

//print("requriedFloat \(requiredFloat)") //requiredFloat need be initialized

type(of: implicitlyUnwrappedOptionals)
print("implicitlyunWEAPPEDoPTIONAL \(implicitlyUnwrappedOptionals)")

implicitlyUnwrappedOptionals = 12.9
var someOtherFloat: Float = implicitlyUnwrappedOptionals
someOtherFloat

let number = "7"
let ryker = "ryker"

var optionalThatIsNil :Int? = Int(ryker) //chage it to Int, but optionally, so return an optional, which is nil
optionalThatIsNil

var optionalThatIsNotNill: Int = Int(number)! //we know it will program, so use exclaimation mark !, and we know it will potentially crash but we still force programming


// Part 2.
// Views in a Playground + Optional Chaining

import UIKit

var b = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
b.backgroundColor = UIColor.red
b.setTitle("Press me", for: UIControl.State.normal)

print(b.titleLabel)
print(b.titleLabel!.text)
print(b.titleLabel?.text)
print(b.titleLabel!.text!) //both titlelabel and text are exclaimed

// Optional Binding
if let tempVar = Int(ryker){ //if this thing is not nill
    print("Temp var exists \(tempVar)")
}else{
    print("There is no temp variable")
}


// Casting
//Any is the top class
var someAny: Any = 7
var someInt: Int
var anotherAny: Any
var anotherInt : Int?

someInt = someAny as! Int // as! means force unwrap, not work without ! because Any is not safe to convert to int
anotherAny = someInt as Any // as means this is by definition will work, the compiler knows it too
anotherInt = someAny as? Int // as? meansdo the cast if you can, if it doesn't work, put a nill
