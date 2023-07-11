//
//  CommandExecutor.swift
//  Command
//
//  Created by Марк Фокша on 12.07.2023.
//

import Foundation

//Coocker
class CommandExecutor {
    private var commandArray = [BaseCommand]()
    
    func addCommand(command: BaseCommand) {
        commandArray.append(command)
    }
    
    func forward(_ str: String) {
        for command in commandArray {
            command.forward(str)
        }
    }
    
    func undoLast() -> String {
        var title = ""
        for command in commandArray {
            title = command.undo()
        }
        return title
    }
    
}
