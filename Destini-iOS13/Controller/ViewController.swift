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
    
    let stories = [
        
        Story(title: "you see a fork in the road",
              choice1: "Turn left",
              choice2: "Turn right"),
        Story(title: "You see a tiger",
              choice1: "Shout for help",
              choice2: "Play dead"),
            
        Story(title: "You find a treasure chest",
              choice1: "Open it",
              choice2: "Check for the trap")
    
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[0].title
        
        choice1Button.setTitle("Take a left", for: .normal)
        
        choice2Button.setTitle("Take a right", for: .normal)
    
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
    }
    


}

