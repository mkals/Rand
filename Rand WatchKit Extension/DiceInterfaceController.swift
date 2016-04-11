//
//  DiceInterfaceController.swift
//  Rand
//
//  Created by Morten Kals on 11/04/16.
//  Copyright © 2016 Morten Kals. All rights reserved.
//

import WatchKit
import Foundation


class DiceInterfaceController: WKInterfaceController {

    @IBOutlet var image: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        generate()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func generate() {
        image.setImage(rollDice())
    }
    
    func rollDice() -> UIImage {
        let number = Dice.init(rawValue: Int(arc4random_uniform(6) + 1))
        let imageName = number!.name + "Watch"
        return UIImage.init(named: imageName)!
    }
    
    enum Dice: Int {
        case One = 1
        case Two = 2
        case Three = 3
        case Four = 4
        case Five = 5
        case Six = 6
        
        var name: String {
            get {
                switch self {
                    case .One: return "one"
                    case .Two: return "two"
                    case .Three: return "three"
                    case .Four: return "four"
                    case .Five: return "five"
                    case .Six: return "six"
                }
            }
        }
    }
}
