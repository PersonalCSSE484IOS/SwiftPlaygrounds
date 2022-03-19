// TODO: Create the LinearLightsOutGame class
class LinearLightsOutGame: CustomStringConvertible{
    var maxnum: Int
    var description: String{
        return "\(state.rawValue) \(getGameString())"
    }
    var moveCount: Int = 0
    var lightsArray: String = ""
    var lightStates: [Bool]
    var state: gameState
    
   
    enum gameState: String{
       // case go = "Please Click\n"
        //case allOn = "All lights on"
        case allOff = "All lights off, you win"
        case notEnd = "Not win yet"
    }
    
    init(numLights: Int){
        self.maxnum = numLights
        lightStates = [Bool]()
        for _ in 0..<numLights{
            let randomInt = Int.random(in: 0...1)
            if(randomInt == 0){
                lightStates.append(false)
            }else{
                lightStates.append(true)
            }
        }
        state = .notEnd
    }
    
    func switchValue(_ index: Int){
        if(lightStates[index] == true){
            lightStates[index] = false
        }else if(lightStates[index] == false){
            lightStates[index] = true
        }
    }
    
    func pressedLightAtIndex(_ index: Int) -> Bool{
        if(state == .allOff){
            
            return true
        }
        
        if index < 0 || index > self.maxnum - 1{
            print("Invalid inedx")
            return false
        }
        
        self.switchValue(index)
        if(index != 0 && index != self.maxnum - 1){
            self.switchValue(index - 1)
            self.switchValue(index + 1)
        }else if(index == 0){
            self.switchValue(1)
        }else if(index == self.maxnum - 1){
            self.switchValue(index - 1)
        }
        moveCount += 1
        print(" Moves: \(moveCount), the lights are: \(lightsArray)")
        checkForWin()
        if(state == .notEnd){
            return false
        }else{
            return true
        }
    }
    
    func checkForWin(){
        let string1 = self.getGameString()
        var stringOff = ""
        var stringOn = ""
        for _ in 0..<maxnum{
            stringOff += "0"
        }
        for _ in 0..<maxnum{
            stringOn += "1"
        }
        if(string1 == stringOff){
            state = .allOff
        }else{
            state = .notEnd
        }
    }
    
    
    func getGameString() -> String{
       
        var gameString = ""
        for i in 0..<maxnum{
            if(self.lightStates[i] == true){
                gameString += "1"
            }else if(self.lightStates[i] == false){
                gameString += "0"
            }
        }
        lightsArray = gameString
        return gameString
    }
}


/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg


var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2

