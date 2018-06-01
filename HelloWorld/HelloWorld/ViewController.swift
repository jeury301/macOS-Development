//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jeury M Mejia  on 5/31/18.
//  Copyright © 2018 MejiaCorps. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var nameField: NSTextField!
    @IBOutlet weak var helloLabel: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func sayButtonClicked(_ sender: Any) {
        print("Current value: "+helloLabel.stringValue)
        
        var name =  nameField.stringValue
        
        if name.isEmpty {
            name = "World"
        }
        
        let greeting = "Hello \(name)!"
        helloLabel.stringValue = greeting
    }
    
}

