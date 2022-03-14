var myVariable : Int = 42 //specify the type of the var, explicitly typed
let myConstant = 50 // create a constant that cannot be changed

myVariable = 100

type(of: myVariable) // use type(of: ) to ge the type of a var or let

let scores = [75, 53, 92, 87, 41, 83]
type(of: scores)

//scores.append(8) //cannot use mutating members, scores cannot be changed as it is a constant, even it is an object

var totalPassing = 0
//loops in swift
for score in scores{
    if(score>=60){
            totalPassing+=1
    }
}
totalPassing

for i in 1...3{ //for i from 1 to 3 inclusive
    print(i)
}

for i in 0..<3{ //for i from 0 to 3, not inclusive
    print(i)
}

for i in 0..<scores.count{
    if(scores[i]>=60){
        print(scores[i])
    }
}
