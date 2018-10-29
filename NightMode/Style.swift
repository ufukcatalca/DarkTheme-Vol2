//
//  Style.swift
//  NightMode
//
//  Created by Horizon on 29.10.2018.
//  Copyright © 2018 Horizon. All rights reserved.
//

import Foundation
import UIKit

struct Theme {
    
    static var backgroundColor       : UIColor?
    static var buttonTextColor       : UIColor?
    static var buttonBackgroundColor : UIColor?
    static var labelTextColor        : UIColor?
    
    static public func defaultTheme() { // Light Theme
        self.backgroundColor       = UIColor.white
        self.buttonTextColor       = UIColor.blue
        self.buttonBackgroundColor = UIColor.white
        self.labelTextColor       = UIColor.black
        updateDisplay()
    }
    
    static public func darkTheme() {
        self.backgroundColor = UIColor.black
        self.buttonTextColor = UIColor.white
        self.buttonBackgroundColor = UIColor.black
        self.labelTextColor       = UIColor.white
        updateDisplay()
    }

    
    static public func updateDisplay() {
        let newButton = UIButton.appearance()
        newButton.setTitleColor(Theme.buttonTextColor, for: .normal)
        newButton.backgroundColor = Theme.buttonBackgroundColor
        
        let newLabel = UILabel.appearance()
        newLabel.textColor = Theme.labelTextColor
        
        let newView = UIView.appearance()
        newView.backgroundColor = backgroundColor
    }
}


// navigator bar color
// yazı renkleri degişiyo
