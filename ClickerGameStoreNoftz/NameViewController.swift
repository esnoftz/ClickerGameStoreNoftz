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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitNameAction(_ sender: UIButton) {
        if nameInputTextField.text == "" {
            nameErrorLabel.text = "Enter a name!"
        } else {
            var name = defaults.string(forKey: "nameOfUser")
            AppData.userName = name
            
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
