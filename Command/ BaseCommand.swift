//
//   BaseCommand.swift
//  Command
//
//  Created by Марк Фокша on 12.07.2023.
//

import Foundation

//Waiter
protocol BaseCommand {
    func undo() -> String
    func forward(_ str: String)
}

class StringUndoCommand: BaseCommand {
    var originalString: String
    var currentString: String
    
    init(argument: String) {
        originalString = argument
        currentString = argument
    }
    
    func undo() -> String {
        currentString.removeLast()
        print(currentString)
        return currentString
    }
    
    func forward(_ str: String) {
        currentString.append(str)
        print(currentString)
    }
    
    
}
