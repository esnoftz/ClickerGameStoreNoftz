//
//  ViewController.swift
//  ClickerGameStoreNoftz
//
//  Created by EVANGELINE NOFTZ on 9/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animal1ImageOutlet: UIImageView!
    
    @IBOutlet weak var animal2ImageOutlet: UIImageView!
    
    @IBOutlet weak var animal3ImageOutlet: UIImageView!
    
    @IBOutlet weak var animal4ImageOutlet: UIImageView!
    
    @IBOutlet weak var pointMenuTextViewOutlet: UITextView!
    
    @IBOutlet weak var mainTotalPointsViewOutlet: UITextView!
    
    @IBOutlet weak var goToStoreButtonOutlet: UIButton!
    
    
    var totalClickPoints = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointMenuTextViewOutlet.text = "*These are the point values of the current animals you have!*\n\nFox: 1 point"
        
    }

    
    // Lower right
    @IBAction func animal1TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 1")
        totalClickPoints += 15
        mainTotalPointsViewOutlet.text = "Total Points: \(totalClickPoints)"
    }
    
    
    // Lower left
    @IBAction func animal2TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 2")
        totalClickPoints += 10
        mainTotalPointsViewOutlet.text = "Total Points: \(totalClickPoints)"
    }
    
    
    // Upper right
    @IBAction func animal3TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 3")
        totalClickPoints += 5
        mainTotalPointsViewOutlet.text = "Total Points: \(totalClickPoints)"
    }
    
    
    
    
    // Upper left
    @IBAction func animal4TapAction(_ sender: UITapGestureRecognizer) {
        print("tap 4")
        totalClickPoints += 1
        mainTotalPointsViewOutlet.text = "Total Points: \(totalClickPoints)"
    }
    
    

}

