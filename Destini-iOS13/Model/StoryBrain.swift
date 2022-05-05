
import Foundation

struct StoryBrain {
    
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
    
    func getStoryText() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    
    mutating func nextStory(userChoice: String) { //User choice ??? with the input and string
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            
            storyNumber = currentStory.choice1Destination
            
        } else {
            
            storyNumber = currentStory.choice2Destination
        }
    }
    
}

