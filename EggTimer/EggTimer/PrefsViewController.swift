//
//  PrefsViewController.swift
//  EggTimer
//
//  Created by Jeury M Mejia  on 6/2/18.
//  Copyright © 2018 MejiaCorps. All rights reserved.
//

import Cocoa

class PrefsViewController: NSViewController {

    @IBOutlet weak var presetsPopup: NSPopUpButton!
    @IBOutlet weak var customSlider: NSSlider!
    @IBOutlet weak var customTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func popupValueChanged(_ sender: NSPopUpButton) {
    }
    
    @IBAction func sliderValueChanged(_ sender: NSSlider) {
    }
    
    
    @IBAction func cancelButtonClicked(_ sender: Any) {
    }
    
    @IBAction func okButtonClicked(_ sender: Any) {
    }

}
