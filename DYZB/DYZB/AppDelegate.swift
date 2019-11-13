//
//  AppDelegate.swift
//  DYZB
//
//  Created by jerry on 2019/11/13.
//  Copyright © 2019 jerry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let screen = UIScreen.main.bounds
        self.window = UIWindow.init(frame: screen)
        self.window?.rootViewController = BaseTabBarViewController()
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        return true
    }

}

