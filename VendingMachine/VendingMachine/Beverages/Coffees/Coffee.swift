//
//  Coffee.swift
//  VendingMachine
//
//  Created by CHOMINJI on 12/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Coffee: Beverage {
    let bean: CoffeeBean
    
    init(brand: String, capacity: Int, price: Int, name: String, dateOfManufactured: Date, temperature: Int, shelfLife: Double, bean: CoffeeBean) {
        self.bean = bean
        
        super.init(brand: brand, capacity: capacity, price: price, name: name, dateOfManufactured: dateOfManufactured, temperature: temperature, shelfLife: shelfLife)
    }
}

enum CoffeeBean {
    case robusta
    case arabica
    case liberica
}
