//
//  MentMaker.swift
//  VendingMachine
//
//  Created by 조재흥 on 18. 12. 21..
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

struct MentMaker {
    static func makeInputMent(vendingMachineInfo: VendingMachineInfo) -> String {
        var ment = "현재 투입한 금액이 \(vendingMachineInfo.checkBalance())원입니다. 다음과 같은 음료가 있습니다.\n"
        
        if vendingMachineInfo.buyableProductList().count > 0 {
            ment += makeBuyableList(list: vendingMachineInfo.buyableProductList())
        } else {
            ment += makeNoMoneyList(list: vendingMachineInfo.checkInventory())
        }
        
        ment += "1. 금액추가\n2. 음료구매\n> "
        return ment
    }
    
    static private func makeBuyableList(list: [String:BeverageInfo]) -> String {
        let buyableList = Array(list.values)
        var ment = ""
        let readInfo = { (name: String, price: Int, beverageCount: Int) -> String in
            return "\(name) \(price)(\(beverageCount)개)\n"
        }
        
        for index in buyableList.startIndex..<buyableList.endIndex {
            ment += ("\(index + 1))" + buyableList[index].info(read: readInfo))
        }
        return ment
    }
    
    static private func makeNoMoneyList(list: [String:Int]) -> String {
        var ment = "=>"
        for (name, count) in list {
            ment += " \(name)(\(count)개)"
        }
        ment += "\n"
        return ment
    }
    
    static func makePostPurchaseMent(beverage: Beverage) -> String {
        let postPurchaseMent = { (name: String, price: Int) -> String in
            return "\(name)를 구매하셨습니다. \(price)원을 차감합니다."
        }
        let ment = beverage.beverageInfo(makeInfo: postPurchaseMent)
        return ment
    }
}
