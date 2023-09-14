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
        self.window?.backgroundColor = UIColor.clear
        let tabBarVC = WGTabBarViewController()
        tabBarVC.shouldHijackHandler = { [weak self] tabbarController, viewController, index in
            guard let self = self else { return true }
            if index == 2 {
                return true
            }
            return false
        }
        
        tabBarVC.didHijackHandler = { [weak self] tabBarController, viewController, index in
            tabBarVC.present(WGAddingRecordViewController(), animated: true, completion: nil)
        }
        tabBarVC.setupViewControllers()
        let navigationVC = UINavigationController(rootViewController: tabBarVC)
        self.window?.rootViewController = navigationVC
        self.window?.makeKeyAndVisible()
        return true
    }


}

