//
//  ViewController.swift
//  NightMode
//
//  Copyright © 2017 Horizon. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch.isOn = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Settings"
    }
    
    @IBAction func switchClicked(_ sender: Any) {
        if mySwitch.isOn == true {
            Theme.darkTheme()
            self.loadView()
            mySwitch.setOn(true, animated: true)
        } else {
            Theme.defaultTheme()
            self.loadView()
            mySwitch.setOn(false, animated: true)
        }
        
    }
}

