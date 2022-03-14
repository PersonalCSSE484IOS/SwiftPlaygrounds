// ********************** Basic function

//func stringRepeater(originalString: String, repeatCount: Int) -> String{
//    var repeatedString = ""
//    for _ in 0..<repeatCount{
//        repeatedString += originalString
//    }
//    return repeatedString
//}








// stringRepeater(originalString: "Ho! ", repeatCount: 3) // named argument
// stringRepeater(originalString: "New York ", repeatCount: 2)


// ********************** Basic function without external argument names

//func stringRepeater(_ originalString: String, _ repeatCount: Int) -> String{ // _ is the external variable name and originalString is the internal variable
//    var repeatedString = ""
//    for _ in 0..<repeatCount{
//        repeatedString += originalString
//    }
//    return repeatedString
//}
//
// stringRepeater("Ho! ", 3) //positional arguments
// stringRepeater("New York ", 2)


// ********************** Optional parameters

//func stringRepeater(_ originalString: String, repeatCount: Int = 2) -> String{ // _ is the external variable name and originalString is the internal variable
//    var repeatedString = ""
//    for _ in 0..<repeatCount{
//        repeatedString += originalString
//    }
//    return repeatedString
//}
//
// stringRepeater("Ho! ")
// //stringRepeater("Ho! ", 3)
// stringRepeater("New York ", repeatCount: 3)


// ********************** Differenter internal and external names for arguments

func stringRepeater(_ originalString: String, alternateCount repeatCount: Int = 2) -> String{ // alternateCounnt is the external name
    var repeatedString = ""
    for _ in 0..<repeatCount{
        repeatedString += originalString
    }
    return repeatedString
}


 stringRepeater("Ho! ")
 stringRepeater("New York ", alternateCount: 3)


// ********************** Returning multiple values

func stringRepeater2(_ originalString: String,  repeatCount: Int = 2) -> (String, String) { // alternateCounnt is the external name
    var repeatedString = ""
    for _ in 0..<repeatCount{
        repeatedString += originalString
    }
    return (repeatedString, repeatedString.uppercased())
}

 var example1: String
 var example2: String
 (example1, example2) = stringRepeater2("New York ", repeatCount: 2)
 example1
 example2

