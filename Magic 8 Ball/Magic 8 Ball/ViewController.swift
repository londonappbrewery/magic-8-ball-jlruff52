//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jeffrey Ruff on 4/14/19.
//  Copyright © 2019 Jeffrey Ruff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        let randomBallNumber = Int(arc4random_uniform(5))
        ImageView.image = UIImage(named:
            ballArray[randomBallNumber])
    }
}

