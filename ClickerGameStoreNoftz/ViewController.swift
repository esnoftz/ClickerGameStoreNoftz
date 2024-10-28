//
//  ViewController.swift
//  ClickerGameStoreNoftz
//
//  Created by EVANGELINE NOFTZ on 9/25/24.
//

class AppData {
    static var totalClickPoints = 0
    static var wolfPurchased = false
    static var lionPurchased = false
    static var tigerPurchased = false
    static var userName = ""
    static var defaults = UserDefaults.standard
    static var encoder = JSONEncoder()
    static var decoder = JSONDecoder()
    static var newGame = false
    static var games = [Game]()
}


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animal1ImageOutlet: UIImageView!
    
    @IBOutlet weak var animal2ImageOutlet: UIImageView!
    
    @IBOutlet weak var animal3ImageOutlet: UIImageView!
    
    @IBOutlet weak var animal4ImageOutlet: UIImageView!
    
    @IBOutlet weak var pointMenuTextViewOutlet: UITextView!
    
    @IBOutlet weak var mainTotalPointsViewOutlet: UITextView!
    
    @IBOutlet weak var goToStoreButtonOutlet: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var defaultImage: UIImage!
    
    var wolfOn = false
    var lionOn = false
    var tigerOn = false
    
    //var totalClickPoints = 0
    
    
    
    var defaults = UserDefaults.standard
    var encoder = JSONEncoder()
    var decoder = JSONDecoder()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointMenuTextViewOutlet.text = "*These are the point values of the current animals you have!*\n\n\nFox: 1 point"
        
        defaultImage = animal4ImageOutlet.image!
        
        var pSave = AppData.defaults.integer(forKey: "savedPoints")
        AppData.totalClickPoints = pSave
        
        mainTotalPointsViewOutlet.text = "Total Points: \(pSave)"
        print(AppData.totalClickPoints)

        var wolfBought = AppData.defaults.bool(forKey: "purchasedWolf")
        AppData.wolfPurchased = wolfBought
        
        var lionBought = AppData.defaults.bool(forKey: "purchasedLion")
        AppData.lionPurchased = lionBought
        
        var tigerBought = AppData.defaults.bool(forKey: "purchasedTiger")
        AppData.tigerPurchased = tigerBought
        
        nameLabel.text = "Hi \(AppData.userName)!"
        
    }

    override func viewWillAppear(_ animated: Bool) {
        print("home screen appearing")
        mainTotalPointsViewOutlet.text = "Total Points: \(AppData.totalClickPoints)"
        if AppData.wolfPurchased == true && wolfOn == false {
            animal2ImageOutlet.image = UIImage(named: "Wolf Image")
            pointMenuTextViewOutlet.text += "\nWolf: 5 points"
            wolfOn = true
        }
        
        if AppData.lionPurchased == true && lionOn == false {
            animal3ImageOutlet.image = UIImage(named: "Lion Image2")
            pointMenuTextViewOutlet.text += "\nLion: 10 points"
            lionOn = true
        }
        
        if AppData.tigerPurchased == true && tigerOn == false {
            animal4ImageOutlet.image = UIImage(named: "Tiger Image3")
            pointMenuTextViewOutlet.text += "\nTiger: 15 points"
            tigerOn = true
            print("showing tiger")
        }
        
        
        if AppData.newGame == true {
            AppData.totalClickPoints = 0
            AppData.defaults.set(AppData.totalClickPoints, forKey: "savedPoints")
            
            animal2ImageOutlet.image = UIImage(named: "Lock Picture")
            animal3ImageOutlet.image = UIImage(named: "Lock Picture")
            animal4ImageOutlet.image = UIImage(named: "Lock Picture")
            
            wolfOn = false
            lionOn = false
            tigerOn = false
            AppData.defaults.set(lionOn, forKey: "purchasedLion")
            AppData.defaults.set(wolfOn, forKey: "purchasedWolf")
            AppData.defaults.set(tigerOn, forKey: "purchasedTiger")
            AppData.wolfPurchased = false
            AppData.lionPurchased = false
            AppData.tigerPurchased = false
            
            nameLabel.text = "Hi \(AppData.userName)!"
            pointMenuTextViewOutlet.text = "*These are the point values of the current animals you have!*\n\n\nFox: 1 point"
            mainTotalPointsViewOutlet.text = "Total Points: \(AppData.totalClickPoints)"
            AppData.newGame = false

        }
        
    }
    
    
    // Lower right
    @IBAction func animal1TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 1 animal 4 (tiger)")
        //print(animal4ImageOutlet.imageNa)
        if animal4ImageOutlet.image != defaultImage {
            AppData.totalClickPoints += 15
            mainTotalPointsViewOutlet.text = "Total Points: \(AppData.totalClickPoints)"
        }
        //if animal1ImageOutlet.image == UII
    }
    
    
    // Lower left
    @IBAction func animal2TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 2 animal 3 (lion)")
        if animal3ImageOutlet.image != defaultImage {
            AppData.totalClickPoints += 10
            mainTotalPointsViewOutlet.text = "Total Points: \(AppData.totalClickPoints)"
        }
    }
    
    
    // Upper right
    @IBAction func animal3TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 3 animal 2 (wolf)")
        if animal2ImageOutlet.image != defaultImage {
            AppData.totalClickPoints += 5
            mainTotalPointsViewOutlet.text = "Total Points: \(AppData.totalClickPoints)"
        }
        
    }
    
    
    
    
    // Upper left
    @IBAction func animal4TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 4 animal 1 (fox)")
        AppData.totalClickPoints += 1
        mainTotalPointsViewOutlet.text = "Total Points: \(AppData.totalClickPoints)"
        
    }
    
    
    @IBAction func saveAction(_ sender: UIButton) {
        
        var pointsSave = AppData.totalClickPoints
        AppData.defaults.set(pointsSave, forKey: "savedPoints")
        print(AppData.totalClickPoints)
        
    
        AppData.defaults.set(lionOn, forKey: "purchasedLion")
        AppData.defaults.set(wolfOn, forKey: "purchasedWolf")
        AppData.defaults.set(tigerOn, forKey: "purchasedTiger")
        print(lionOn)
        print(wolfOn)
        print(tigerOn)
        
        AppData.games.append(Game(name: AppData.userName, totalPoints: AppData.totalClickPoints, wolf: AppData.wolfPurchased, lion: AppData.lionPurchased, tiger: AppData.tigerPurchased))
        
    }
    
    
    
    
    
    
    

}

