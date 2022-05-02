//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBOutlet weak var storyLable: UILabel!
    
    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    var story0 = "You see a fork in the road"
    var choice1 = "Take a left"
    var choice2 = "Take a right"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = story0
        choice1Button.setTitle("Take a left", for: .normal)
        choice2Button.setTitle("Take a right", for: .normal)
        
        

    }


}

