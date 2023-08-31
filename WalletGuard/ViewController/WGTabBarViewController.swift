//
//  WGTabBarViewController.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/8/31.
//

import UIKit

class WGTabBarViewController : UITabBarController {
    
    
    
    public func setupViewControllers() {
        
        var vcs: [UIViewController]  = []
        for config in WGBottomNaviConfig.allCases {
            vcs.append(config.viewController)
        }
        
        self.viewControllers = vcs

    }
    
    
}
