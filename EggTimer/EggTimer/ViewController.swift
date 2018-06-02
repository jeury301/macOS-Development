//
//  ViewController.swift
//  EggTimer
//
//  Created by Jeury M Mejia  on 5/31/18.
//  Copyright © 2018 MejiaCorps. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var timeLeftField: NSTextField!
    @IBOutlet weak var eggImageView: NSImageView!
    @IBOutlet weak var startButton: NSButton!
    @IBOutlet weak var stopButton: NSButton!
    @IBOutlet weak var resetButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func startButtonClicked(_ sender: Any) {
        print("Start button clicked!")
    }
    
    @IBAction func stopButtonClicked(_ sender: Any) {
        print("Stop button clicked!")
    }
    
    @IBAction func resetButtonClicked(_ sender: Any) {
        print("Reset button clicked")
    }
    
    
}

