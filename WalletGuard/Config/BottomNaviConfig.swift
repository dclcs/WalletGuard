//
//  BottomNaviConfig.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/8/31.
//

import UIKit
import ESTabBarController

enum WGBottomNaviConfig: CaseIterable {
    case home
    case project
    case record
    case budget
    case account
    
    
    var name: String {
        switch self {
        case .home:
            return "首页"
        case .project:
            return "收支项目"
        case .record:
            return "添加交易"
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
            vc.tabBarItem.image = UIImage(systemName: "house")
            vc.tabBarItem.title = self.name
            return vc
        case .project:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "house")
            vc.tabBarItem.title = self.name
            return vc
        case .record:
            let vc = WGAddingRecordViewController()
            let view = ESTabBarItemContentView()
            view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//            view.backgroundColor = .red
            vc.tabBarItem = ESTabBarItem(ExampleIrregularityContentView(), title: nil, image: UIImage(named: "big"), selectedImage: UIImage(named: "big"))
            return vc
        case .budget:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "house")
            vc.tabBarItem.title = self.name
            return vc
        case .account:
            let vc = HomeViewController()
            vc.tabBarItem.image = UIImage(systemName: "house")
            vc.tabBarItem.title = self.name
            return vc
        }
    }
}
