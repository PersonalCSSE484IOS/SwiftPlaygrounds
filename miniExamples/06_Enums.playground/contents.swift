// Basic enum

//enum weekday{
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}
//
//var today : weekday = weekday.tuesday

enum weekday{
    case monday, tuesday, wednesday, thursday, friday
}

var today : weekday = .tuesday

switch today{
case .monday, .tuesday, .thursday:
    print("You have class")
case .wednesday:
    print("Weekend Wednesday")
default:
    print("It's weekend")
}


// Rawvalues
enum State: Int{
    case ready = 0
    case steady
    case go
}
var raceState = State.go
type(of: raceState)
raceState.rawValue

var nextRaceState = State(rawValue: 1)
type(of: nextRaceState)
nextRaceState?.rawValue

if nextRaceState == .go{
    print("Do!")
}









// Associated values and functions
enum HomeworkStatus{
    case noHomework
    case InProgress(Int, Int)
    case done
    
    func simpleDescription() -> String{
        switch self{
        case .noHomework:
            return "no HOMEWORK"
        case .InProgress(let numComplete, let total):
            return "You finished \(numComplete) out of \(total)"
        case .done:
            return "finished"
        }
    }
}



var mystatus = HomeworkStatus.InProgress(6, 10)
var mystatus2 = HomeworkStatus.InProgress(8, 100)
mystatus.simpleDescription()
mystatus2.simpleDescription()
