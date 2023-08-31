//
//  AppDelegate.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/8/30.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        
        let tabBarVC = WGTabBarViewController()
        tabBarVC.setupViewControllers()
        let navigationVC = UINavigationController(rootViewController: tabBarVC)
        self.window?.rootViewController = navigationVC
        self.window?.makeKeyAndVisible()
        return true
    }


}

