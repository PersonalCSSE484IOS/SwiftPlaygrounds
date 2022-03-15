var values = [10, 5, 2, 8, 3, 6, 1, 1000]

// Verbose Closure
var  numValueOver5 = values.reduce(0, {(runningTotal: Int, currentValue:Int) -> Int in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
})
numValueOver5



// Closure parameter name shorthand and trailing closure

numValueOver5 = values.reduce(0) {(runningTotal: Int, currentValue:Int) -> Int in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
}
numValueOver5
//shorthand of number one

numValueOver5 = values.reduce(0) {(runningTotal, currentValue) -> Int in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
}
numValueOver5
//shorthand of number two


numValueOver5 = values.reduce(0) {(runningTotal, currentValue) -> Int in
    currentValue > 5 ? runningTotal + 1 : runningTotal
}
numValueOver5
//shorthand of number three

numValueOver5 = values.reduce(0) {
    $1 > 5 ? $0 + 1 : $0 //$1 is second argument, $0 is the first argument
}
numValueOver5



// A Closure using a closure for a variable

func numValuesOverLimit(_ values : [Int], limit threshold : Int)->Int{
    return values.reduce(0) {(runningTotal: Int, currentValue:Int) -> Int in
        currentValue > threshold ? runningTotal + 1 : runningTotal
    }
}







numValuesOverLimit(values, limit: 5)
numValuesOverLimit(values, limit: 9)


// Comparing func and closure syntax
func asAFunc(_ someString: String, _ someNumber: Int) -> String {
  return String(repeating: someString, count: someNumber)
}
let asAClosure = {(_ someString: String, _ someNumber: Int) -> String in
  return String(repeating: someString, count: someNumber)
}
asAFunc("Holy ", 3)
asAClosure("Holy ", 3)
