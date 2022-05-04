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
    
    var storyNumber = 0
    
    let stories = [
        
        Story(title: "you see a fork in the road",
              choice1: "Turn left",
              choice1Destination: 1,
              choice2: "Turn right",
             choice2Destination: 2),
        Story(title: "You see a tiger",
              choice1: "Shout for help",
              choice1Destination: 0, // we are using 0 cus we want to be back to the default story
              choice2: "Play dead",
             choice2Destination: 0),
            
        Story(title: "You find a treasure chest",
              choice1: "Open it",
              choice1Destination: 0,
              choice2: "Check for the trap",
             choice2Destination: 0)
    
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle
        
        if userChoice == stories[storyNumber].choice1{
            
            storyNumber = stories[storyNumber].choice1Destination
            
        }else {
            
            storyNumber = stories[storyNumber].choice2Destination
            
        }
        
        updateUI()
        
        }
        
    func updateUI(){
        
        storyLabel.text = stories[storyNumber].title
        
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }

}

