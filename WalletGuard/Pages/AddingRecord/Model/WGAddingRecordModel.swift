//
//  WGAddingRecordModel.swift
//  WalletGuard
//
//  Created by daicanglan on 2023/9/14.
//

import UIKit

struct WGAddingRecordModel {
    
}


struct WGAddingRecordBasicModel {
    var moneyAmount: Int
    var moneyType: Int // 币种
    var recordType: Int // 记录类型
    var date: Int
    var walletType: Int // 钱包类别
}


struct WGAddingRecordExtraModel {
    var people: String
    var position: String
    var event: String
    var notification: String
    var photos: String
    var excludeFromReport: Bool
}
