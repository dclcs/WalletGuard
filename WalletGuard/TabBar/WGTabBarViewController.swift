//
//  WGTabBarViewController.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/8/31.
//

import UIKit
import ESTabBarController
class WGTabBarViewController : ESTabBarController {
    
    public func setupViewControllers() {
        
        var vcs: [UIViewController]  = []
        for config in WGBottomNaviConfig.allCases {
            vcs.append(config.viewController)
        }
        
        self.view.backgroundColor = .white
        
        self.viewControllers = vcs

    }
    
    
}
