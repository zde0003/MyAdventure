//
//  ViewController.swift
//  MyAdventure
//
//  Created by Zach Evetts on 1/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var goalLabel: UILabel!
    
    @IBOutlet weak var pathLabel: UILabel!
    
    @IBOutlet weak var topOption: UIButton!
    
    @IBOutlet weak var bottomOption: UIButton!
    
    var pathLogic = PathLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        goalLabel.text! = "Your goal is to find the treasure!"
        
//        pathLabel.text! = pathLogic.path[pathLogic.pathIndex].question
    }

    
    @IBAction func pathSelected(_ sender: UIButton) {
        let pathSelected = sender.titleLabel!.text!
    
        let correctPath = pathLogic.compareUserAnswer(pathSelected)
    
        if correctPath {
            sender.backgroundColor = UIColor.green
            updateUI()
            
            if pathSelected == "Blue" {
                pathLabel.text = "Congrats! You found the treasure!"
                topOption.setTitle("Play Again?", for: .normal)
                bottomOption.setTitle("", for: .normal)
                bottomOption.isHidden = true
            }
        } else {
            sender.backgroundColor = UIColor.red
            pathLabel.text = "You died... Game Over!"
            pathLabel.textColor = UIColor.red
            topOption.setTitle("Try Again?", for: .normal)
            bottomOption.setTitle("", for: .normal)
            topOption.backgroundColor = UIColor.clear
            bottomOption.backgroundColor = UIColor.clear
            bottomOption.isHidden = true
            
            if pathSelected == "Try Again?" || pathSelected == "Play Again?" {
                pathLabel.textColor = UIColor.black
                bottomOption.isHidden = true
                pathLogic.pathIndex = 0
                updateUI()
            }
        }
    }
    
    func updateUI() {
        pathLabel.text = pathLogic.path[pathLogic.pathIndex].question
        topOption.setTitle(pathLogic.path[pathLogic.pathIndex].option_one, for: .normal)
        bottomOption.setTitle(pathLogic.path[pathLogic.pathIndex].option_two, for: .normal)
        topOption.backgroundColor = UIColor.clear
        bottomOption.backgroundColor = UIColor.clear
        bottomOption.isHidden = false
    }
    
}

