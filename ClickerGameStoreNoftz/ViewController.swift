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
    
    var defaultImage: UIImage!
    
    var wolfOn = false
    var lionOn = false
    var tigerOn = false
    
    //var totalClickPoints = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointMenuTextViewOutlet.text = "*These are the point values of the current animals you have!*\n\n\nFox: 1 point"
        
        defaultImage = animal4ImageOutlet.image!
        
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
    
    

}

