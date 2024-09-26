//
//  StoreViewController.swift
//  ClickerGameStoreNoftz
//
//  Created by EVANGELINE NOFTZ on 9/25/24.
//

import UIKit

class StoreViewController: UIViewController {

    @IBOutlet weak var buyWolfButtonOutlet: UIButton!
    
    @IBOutlet weak var buyLionButtonOutlet: UIButton!
    
    @IBOutlet weak var buyTigerButtonOutlet: UIButton!
    
    @IBOutlet weak var storeTotalPointsTextOutlet: UITextView!
    
    @IBOutlet weak var purchaseErrorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storeTotalPointsTextOutlet.text = "Total Points: \(AppData.totalClickPoints)"
        
        //buyWolfButtonOutlet.tintColor = UIColor.systemBrown
        //buyLionButtonOutlet.tintColor = UIColor.systemBrown
        //buyTigerButtonOutlet.tintColor = UIColor.systemBrown
    }
    

    @IBAction func buyWolfAction(_ sender: UIButton) {
        if AppData.wolfPurchased == true {
            purchaseErrorLabel.text = "You already purchased the wolf!"
        } else {
            if AppData.totalClickPoints < 50 {
                purchaseErrorLabel.text = "Not enough points to purchase!"
            } else {
                purchaseErrorLabel.text = "Wolf has been purchased!"
                AppData.wolfPurchased = true
                //sender.tintColor = UIColor.red
                AppData.totalClickPoints -= 50
                storeTotalPointsTextOutlet.text = "Total Points: \(AppData.totalClickPoints)"
            }
        }
    }
    
    
    @IBAction func buyLionAction(_ sender: UIButton) {
        if AppData.lionPurchased == true {
            purchaseErrorLabel.text = "You already purchased the lion!"
        } else {
            if AppData.totalClickPoints < 500 {
                purchaseErrorLabel.text = "Not enough points to purchase!"
            } else {
                purchaseErrorLabel.text = "Lion has been purchased!"
                AppData.lionPurchased = true
                //sender.backgroundColor = UIColor.red
                AppData.totalClickPoints -= 500
                storeTotalPointsTextOutlet.text = "Total Points: \(AppData.totalClickPoints)"
            }
        }
    }
    
    
    @IBAction func buyTigerAction(_ sender: UIButton) {
        if AppData.tigerPurchased == true {
            purchaseErrorLabel.text = "You already purchased the tiger!"
        } else {
            if AppData.totalClickPoints < 2000 {
                purchaseErrorLabel.text = "Not enough points to purchase!"
            } else {
                purchaseErrorLabel.text = "Tiger has been purchased!"
                AppData.tigerPurchased = true
                //sender.backgroundColor = UIColor.red
                AppData.totalClickPoints -= 2000
                storeTotalPointsTextOutlet.text = "Total Points: \(AppData.totalClickPoints)"
            }
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
