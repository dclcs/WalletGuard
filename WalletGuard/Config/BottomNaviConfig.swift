//
//  BottomNaviConfig.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/8/31.
//

import UIKit

enum WGBottomNaviConfig: CaseIterable {
    case home
    case project
    case budget
    case account
    
    
    var name: String {
        switch self {
        case .home:
            return "首页"
        case .project:
            return "收支项目"
        case .budget:
            return "预算"
        case .account:
            return "账户"
        }
    }
    
    
    var viewController: UIViewController {
        switch self {
        case .home:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "home")
            vc.tabBarItem.title = self.name
            return vc
        case .project:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "home")
            vc.tabBarItem.title = self.name
            return vc
        case .budget:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "home")
            vc.tabBarItem.title = self.name
            return vc
        case .account:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "home")
            vc.tabBarItem.title = self.name
            return vc
        }
    }
}
