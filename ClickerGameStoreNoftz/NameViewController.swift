//
//  NameViewController.swift
//  ClickerGameStoreNoftz
//
//  Created by EVANGELINE NOFTZ on 10/21/24.
//

import UIKit

class NameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var nameInputTextField: UITextField!
    
    @IBOutlet weak var nameErrorLabel: UILabel!
    
    @IBOutlet weak var gamesTableView: UITableView!
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gamesTableView.delegate = self
        gamesTableView.dataSource = self
        
        var name = AppData.defaults.string(forKey: "nameOfUser")
        if let n = name {
            AppData.userName = n
        }
        
        gamesTableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameErrorLabel.text = ""
        nameInputTextField.text = ""
        gamesTableView.reloadData()
    }
    
    @IBAction func submitNameAction(_ sender: UIButton) {
        if nameInputTextField.text != "" {
            AppData.userName = nameInputTextField.text!
            AppData.defaults.set(AppData.userName, forKey: "nameOfUser")
            nameErrorLabel.text = "Name entered!"
            nameInputTextField.text = ""
        } else {
            nameErrorLabel.text = "Enter a name!"
        }
        
    }
    
    
    @IBAction func startNewGameAction(_ sender: UIButton) {
        /*AppData.totalClickPoints = 0
        AppData.defaults.set(AppData.totalClickPoints, forKey: "savedPoints")
        
        AppData.wolfPurchased = false
        AppData.lionPurchased = false
        AppData.tigerPurchased = false*/

        AppData.newGame = true
        
        if nameInputTextField.text == "" {
            nameErrorLabel.text = "Enter your name!"
        } else {
            AppData.userName = nameInputTextField.text!
            AppData.defaults.set(AppData.userName, forKey: "nameOfUser")
            nameErrorLabel.text = "New game started! Click Go to Game!"
            nameInputTextField.text = ""
            
        }
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "\(AppData.games[indexPath.row].name)"
        return cell
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
