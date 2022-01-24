//
//  OpenSettingMenuAction.swift
//  StocksBar
//
//  Created by xu.shuifeng on 2019/4/28.
//  Copyright © 2019 alexiscn. All rights reserved.
//

import Cocoa

class OpenSettingMenuAction: NSObject {
    
    class func perform(_ sender: NSView) {
        
        let delegate = NSApplication.shared.delegate as! AppDelegate
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "关于", action: #selector(delegate.openAbout), keyEquivalent: ""))
        menu.addItem(.separator())
        menu.addItem(NSMenuItem(title: "设置...", action: #selector(delegate.openPreference), keyEquivalent: ","))
        menu.addItem(.separator())
        menu.addItem(NSMenuItem(title: "退出", action: #selector(delegate.quit), keyEquivalent: "q"))
        NSMenu.popUpContextMenu(menu, with: NSApp.currentEvent!, for: sender)
    }
}
