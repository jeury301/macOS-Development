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
    
    var prefs = Preferences()

    override func viewDidLoad() {
        super.viewDidLoad()
        showExistingPrefs()
    }
    
    @IBAction func popupValueChanged(_ sender: NSPopUpButton) {
        if sender.selectedItem?.title == "Custom" {
            customSlider.isEnabled = true
            return
        }
        
        let newTimerDuration = sender.selectedTag()
        print(sender.selectedTag())
        customSlider.integerValue = (newTimerDuration == 15) ? newTimerDuration + 1: newTimerDuration
        showSliderValueAsText()
        customSlider.isEnabled = false
    }
    
    @IBAction func sliderValueChanged(_ sender: NSSlider) {
        showSliderValueAsText()
    }
    
    @IBAction func cancelButtonClicked(_ sender: Any) {
        view.window?.close()
    }
    
    @IBAction func okButtonClicked(_ sender: Any) {
        saveNewPrefs()
        view.window?.close()
    }
    
    func showExistingPrefs() {
        // 1
        let selectedTimeInMinutes = Int(prefs.selectedTime) / 60
        
        // 2
        presetsPopup.selectItem(withTitle: "Custom")
        customSlider.isEnabled = true
        
        // 3
        for item in presetsPopup.itemArray {
            if item.tag == selectedTimeInMinutes {
                presetsPopup.select(item)
                customSlider.isEnabled = false
                break
            }
        }
        
        // 4
        customSlider.integerValue = (selectedTimeInMinutes == 15) ? selectedTimeInMinutes + 1: selectedTimeInMinutes
        showSliderValueAsText()
    }
    
    // 5
    func showSliderValueAsText() {
        let newTimerDuration = customSlider.integerValue
        let minutesDescription = (newTimerDuration == 1) ? "minute" : "minutes"
        customTextField.stringValue = "\(newTimerDuration) \(minutesDescription)"
    }
    
    func saveNewPrefs() {
        prefs.selectedTime = floor(customSlider.doubleValue) * 60
        print(prefs.selectedTime)
        NotificationCenter.default.post(name: Notification.Name(rawValue: "PrefsChanged"),
                                        object: nil)
    }
}
