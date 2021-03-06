//
//  InterfaceController.swift
//  Rand WatchKit Extension
//
//  Created by Morten Kals on 26/03/16.
//  Copyright © 2016 Morten Kals. All rights reserved.
//

import WatchKit
import Foundation


class CustomInterfaceController: WKInterfaceController {

    
    @IBOutlet var pickerOne: WKInterfacePicker!
    @IBOutlet var pikerTwo: WKInterfacePicker!
    
    @IBOutlet var numberLabel: WKInterfaceLabel!
    
    @IBAction func generate() {
        presentControllerWithName("BoundsController", context: nil)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func toBinary() {
        pushControllerWithName("binary", context: nil)
    }
    
    @IBAction func toTernary() {
        pushControllerWithName("ternay", context: nil)
    }
    
    @IBAction func toSenary() {
        pushControllerWithName("senary", context: nil)
    }
}
