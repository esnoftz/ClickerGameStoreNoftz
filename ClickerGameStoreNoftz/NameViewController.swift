//
//  NameViewController.swift
//  ClickerGameStoreNoftz
//
//  Created by EVANGELINE NOFTZ on 10/21/24.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var nameInputTextField: UITextField!
    
    @IBOutlet weak var nameErrorLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var name = AppData.defaults.string(forKey: "nameOfUser")
        if let n = name {
            AppData.userName = n
        }
    }
    

    @IBAction func submitNameAction(_ sender: UIButton) {
        if nameInputTextField.text != "" {
            AppData.userName = nameInputTextField.text!
            AppData.defaults.set(AppData.userName, forKey: "nameOfUser")
            nameErrorLabel.text = "Name entered!"
        } else {
            nameErrorLabel.text = "Enter a name!"
        }
        
    }
    
    
    @IBAction func startNewGameAction(_ sender: UIButton) {
        AppData.totalClickPoints = 0
        AppData.defaults.set(AppData.totalClickPoints, forKey: "savedPoints")
        
        AppData.wolfPurchased = false
        AppData.lionPurchased = false
        AppData.tigerPurchased = false

        AppData.newGame = true
        
        if nameInputTextField.text == "" {
            nameErrorLabel.text = "Enter your name!"
        } else {
            AppData.userName = nameInputTextField.text!
            AppData.defaults.set(AppData.userName, forKey: "nameOfUser")
            nameErrorLabel.text = "New game started! Click Go to Game!"
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
