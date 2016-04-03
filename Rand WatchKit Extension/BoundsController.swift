//
//  InterfaceController.swift
//  Rand WatchKit Extension
//
//  Created by Morten Kals on 26/03/16.
//  Copyright © 2016 Morten Kals. All rights reserved.
//

import WatchKit
import Foundation


class BoundsController: WKInterfaceController {

    
    @IBOutlet var image: WKInterfaceImage!
    @IBOutlet var upperBoundPicker: WKInterfacePicker!
    @IBOutlet var lowerBoundPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let pickerItems: [WKPickerItem] = (0...10).map {
            let item = WKPickerItem()
            item.title = "\($0)"
            return item
        }
        
        upperBoundPicker.setItems(pickerItems)
        lowerBoundPicker.setItems(pickerItems)
    }
    
    @IBAction func done() {
        
        let picker = upperBoundPicker
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("Coding Explorer", forKey: "upperBound")
        
        presentControllerWithName("main", context: nil)
    }
    
    override func pickerDidSettle(picker: WKInterfacePicker) {
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
