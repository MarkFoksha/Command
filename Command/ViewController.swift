//
//  ViewController.swift
//  Command
//
//  Created by Марк Фокша on 12.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    let commandExecutor = CommandExecutor()
    var commUndo: StringUndoCommand?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }
    @IBAction func undoButton(_ sender: Any) {
        textField.text = commandExecutor.undoLast()
    }
    

}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        commUndo = StringUndoCommand(argument: textField.text!)
        commandExecutor.addCommand(command: commUndo!)
        commandExecutor.forward(string)
        
        return true
    }
    
}

