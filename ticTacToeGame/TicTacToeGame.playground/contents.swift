

// TODO: Create the TicTacToeGame class
class TicTacToeGame: CustomStringConvertible{
    var board: [MarkType]
    var state: gameState
    enum MarkType: String{
        case x = "X"
        case o = "O"
        case none = "-"
    }
    
    enum gameState: String{
        case xTurn = "X's turn"
        case oTurn = "O's turn"
        case xWon = "x WINS"
        case oWon = "o WINS"
        case tie = "Tie Game"
    }
    
    init(){
        board = [MarkType]()
        for _ in 0..<9{
            board.append(.none)
        }
        state = .xTurn
    }
    
    func pressedSquare(at index: Int){
        if index < 0 || index > 8{
            print("invalid index")
            return
        }
        if board[index] != .none{
            print("This square is not empty!")
            return
        }
        switch state{
            
        case .xTurn:
            board[index] = .x
            state = .oTurn
        case .oTurn:
            board[index] = .o
            state = .xTurn
        default:
            print("The gmae has already been won")
            return
        }
    }
    
    func getGameString(_ indicies: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]) -> String {
        var gameString = ""
        for index in indicies{
            gameString += board[index].rawValue
        }
        return gameString
    }
    
    func checkForWin(){
        var linesOf3 = [String]()
        
        linesOf3.append(getGameString([0,1,2]))
        linesOf3.append(getGameString([3,4,5]))
        linesOf3.append(getGameString([6,7,8]))
        
        linesOf3.append(getGameString([0,3,6]))
        linesOf3.append(getGameString([1,4,7]))
        linesOf3.append(getGameString([2,5,8]))
        
        linesOf3.append(getGameString([0,4,8]))
        linesOf3.append(getGameString([2,4,8]))
        
        for lineOf3 in linesOf3{
            if(lineOf3 == "XXX"){
                state = .xWon
            }else if(lineOf3 == "OOO"){
                state = .oWon
            }
        }

    }
    
    var description: String{
        return "\(state.rawValue) \(getGameString())"
    }
}


/* ----------------- Official Playground testing ----------------- */
var game = TicTacToeGame()
game.pressedSquare(at: 0)
game.pressedSquare(at: 1)
game.pressedSquare(at: 3)
game.pressedSquare(at: 2)
game.pressedSquare(at: 6)


var game2 = TicTacToeGame()
game2.board = [.x, .x, .o,
                .none, .none, .none,
                .o, .none, .none]
game2.pressedSquare(at: 8)
game2.pressedSquare(at: 4)


var game3 = TicTacToeGame()
game3.board = [.x, .x, .o,
    .o, .o, .x,
    .x, .o, .none]
game3.pressedSquare(at: 8)

