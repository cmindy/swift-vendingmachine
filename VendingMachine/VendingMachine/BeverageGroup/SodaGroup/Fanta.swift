//
//  Fanta.swift
//  VendingMachine
//
//  Created by Eunjin Kim on 2018. 1. 11..
//  Copyright © 2018년 JK. All rights reserved.
//

import Foundation

class Fanta: Soda {
    private var kindOfSoda: String = "환타"
    private var materials: String = "Aluminum"
    init(brand: String, weight: Int, price: Int, name: String, manufactureDate: Date, materials: String) {
        self.materials = materials
        super.init(brand: brand, weight: weight, price: price, name: name, manufactureDate: manufactureDate)
        super.typeOfBeverage = String(describing: type(of: self))
    }
    override var description: String {
        return "\(self.kindOfSoda)(\(typeOfBeverage))\(super.description)"
    }
    
    func isAluminumCan() -> Bool {
        return self.materials == "Aluminum"
    }
}