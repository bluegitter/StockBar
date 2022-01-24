//
//  GeneralPreferenceViewController.swift
//  StocksBar
//
//  Created by xu.shuifeng on 2019/5/15.
//  Copyright © 2019 alexiscn. All rights reserved.
//

import Cocoa
import Preferences
import LaunchAtLogin

extension Preferences.PaneIdentifier {
    static let general = Self("general")
    static let advanced = Self("advanced")
}

class GeneralPreferenceViewController: NSViewController, PreferencePane {
    
    let preferencePaneIdentifier = Preferences.PaneIdentifier.general
    let preferencePaneTitle: String = "General"
    let toolbarItemIcon: NSImage = NSImage(named: NSImage.preferencesGeneralName)!
    
    @IBOutlet weak var launchOnSystemStartButton: NSButton!
    
    @IBOutlet weak var loopDisplayStockButton: NSButton!
    
    override var nibName: NSNib.Name? {
        return "GeneralPreferenceViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        launchOnSystemStartButton.state = LaunchAtLogin.isEnabled ? .on : .off
        loopDisplayStockButton.state = AppPreferences.shared.loopDisplayStocks ? .on : .off
    }
    
    @IBAction func tapLaunchOnSystemStartButton(_ sender: Any) {
        LaunchAtLogin.isEnabled = !LaunchAtLogin.isEnabled
    }
    
    @IBAction func tapLoopDisplayStockButton(_ sender: Any) {
        AppPreferences.shared.loopDisplayStocks = !AppPreferences.shared.loopDisplayStocks
    }
}
